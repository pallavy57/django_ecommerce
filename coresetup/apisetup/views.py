from django.views.decorators.csrf import csrf_exempt
from urllib import parse
import ast
import json
import os
import pickle
import uuid
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.shortcuts import redirect, render
from django.urls import reverse
import numpy as np
from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.contrib.auth import authenticate, login, logout
from coresetup.message_queue.pulsar_consumer import PulsarConsumer
from coresetup.message_queue.pulsar_producer import PulsarProducer
from onlinemarketplace.forms import UserCreationForm, LoginForm
from django.db import connection
from datetime import date
import hashlib
import re
import requests
from django.contrib.auth.models import User
import json
import pandas as pd
import razorpay
from django.conf import settings
from django.http import JsonResponse
from django.shortcuts import render
from apisetup.tasks import send_feedback_email_task
from nltk.stem.porter import PorterStemmer
from nltk.corpus import stopwords
from django.views.decorators.cache import cache_page
from django.views.decorators.csrf import csrf_protect


STOPWORDS = set(stopwords.words("english"))
# load the nlp model and tfidf vectorizer from disk
filename = 'nlp_model.pkl'
clf = pickle.load(open(filename, 'rb'))
vectorizer = pickle.load(open('tranform.pkl', 'rb'))


def send_email(email, message):
    print(email)
    send_feedback_email_task.delay(
        email, message
    )


def validate_mobile_number(mobile_number):
    pattern = re.compile(r'^\d{10}$')
    return bool(pattern.match(mobile_number))

# signup page


def encode_password(password):
    password_bytes = password.encode('utf-8')
    hash_object = hashlib.sha256(password_bytes)
    return hash_object.hexdigest()


def loginUser(request):
    if request.method == 'POST':
        email = request.POST.get('email')
        userpassword = request.POST.get('password')
        checking_user = '''select email from users_management.users where email = %s'''
        cursor2 = connection.cursor()
        cursor2.execute(checking_user, (email,))
        existing_user = cursor2.fetchone()
        if (existing_user == None):
            return JsonResponse({"resp": "Bad Request! You Dont Exists In the data base, please register"}, status=400)
        else:
            payload = {
                "username": email,
                "password": userpassword
            }
        json_payload = json.dumps(payload)
        checking_password = '''select password from users_management.users where email = %s'''
        cursor3 = connection.cursor()
        cursor3.execute(checking_password, (email,))
        stored_hash = cursor3.fetchone()

        converted = hashlib.sha256(userpassword.encode('utf-8')).hexdigest()
        if (converted == stored_hash[0]):
            r = requests.post(
                'http://127.0.0.1:8000/apis/token/', data=json_payload, headers={"Content-Type": "application/json"})

            request.session["access"] = r.json()["access"]
            request.session["refresh"] = r.json()["refresh"]
            get_user = '''select id from users_management.users where email = %s'''
            cursor2 = connection.cursor()
            cursor2.execute(get_user, (email,))
            existing_user = cursor2.fetchone()
            request.session["existing_user"] = existing_user[0]
            return JsonResponse({"access": r.json()["access"], "refresh": r.json()["refresh"]}, status=200)
        else:
            return JsonResponse({"resp": "Bad Request! You Dont Exists In the data base, please register"}, status=400)

    else:
        return render(request, 'login.html', {})


def registeruser(request):

    if request.method == 'POST':
        email = request.POST.get('email')
        password = request.POST.get('password')
        phone = request.POST.get('phone')
        address = request.POST.get('address')
        state = request.POST.get('state')
        city = request.POST.get('city')
        zipcode = request.POST.get('zipcode')
        today = date.today().strftime("%b-%d-%Y")

        checking_email = '''select email from users_management.users where phone = %s'''
        cursor3 = connection.cursor()
        cursor3.execute(checking_email, (phone,))

        if len(cursor3.fetchall()) != 0:
            return JsonResponse({"resp": "Bad Request! You Exists In the data base, please login"}, status=400)
        else:
            enoded = encode_password(password)
            raw_query = '''INSERT INTO users_management.users (name, email, phone,password, created_at, modified_at) VALUES(%s,%s,%s,%s,%s,%s)'''
            cursor = connection.cursor()
            cursor.execute(
                raw_query, (email, email, phone, enoded, today, today))

            raw_query_2 = '''INSERT INTO users_management.user_address (user_id, address, state,city,zipcode) 
            VALUES((select id from users_management.users where email = %s),%s, %s,%s,%s)'''
            cursor2 = connection.cursor()
            cursor2.execute(
                raw_query_2, (email, address, state, city, zipcode))

            user = User.objects.create(
                username=email,
                email=email
            )

            user.set_password(password)
            user.save()
            # send_email(email, "Thank You For Registering")
            send_feedback_email_task.delay(
                email, "Thank You For Registering"
            )
            if (user):
                return JsonResponse({"resp": "Users Registered"}, status=200)

    else:
        return render(request, 'signup.html', {})


def user_signup(request):
    return render(request, 'signup.html')

# login page


def user_login(request):
    return render(request, 'login.html')





def cartpage(request):




    return render(request, 'cartpage.html', context={"recommendations": request.session.get('recommendations'), "cartItems": request.session.get('cartItems')})


def user_logout(request):
    logout(request)
    return redirect('login')


def productpage(request, id, userId):
    getting_product = '''select p.image, p.id, p.name, p.description, p.sku, p.price,p.modified_at, pc."name" as cat_name, pi2.quantity as stock, d.name as discount_package, d.discount_percent 
                            from products.products p
                            inner join products.product_category pc on pc.id = p.category_id 
                            inner join products.product_inventory pi2 on pi2.id  = p.inventory_id 
                            inner join products.discount d  on d.id = p.discount_id where p.id = %s'''
    cursor = connection.cursor()
    cursor.execute(getting_product, (id,))
    columns = [col[0] for col in cursor.description]
    product = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

    getting_commentsAndReviews = '''select c.id, c.likes, c."text" ,c.review, u."name" 
                            from products.products p
                            inner join products.product_comments pc2 on pc2.product_id = p.id
                            inner join products."comments" c on c.id = pc2.comment_id
                            inner join users_management.users u on c.user_id = u.id
                            where p.id =%s'''
    cursor = connection.cursor()
    cursor.execute(getting_commentsAndReviews, (id,))
    columns = [col[0] for col in cursor.description]
    comments = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

    avarage_ratings = 0
    reviewArray = []
    for i in comments:
        avarage_ratings = (avarage_ratings + i["review"])/len(comments)
        reviewArray.append(i["review"])
    productReviews = recommendationSystem(userId)
    favorable_rating = tuple()
    l = list(favorable_rating)
    for key, value in productReviews.items():
        if value["status_analysis"] == "Good":
            l.append(value["ratings"])
    t = tuple(l)
    print(t)
    getting_recomm_on_Reviews = '''select distinct p.name, p.image, p.id, p.description, p.sku, p.price,p.modified_at, 
                            pc2."name" as cat_name, 
                            pi2.quantity as stock, 
                            d.name as discount_package,
                            d.discount_percent 
                            from products."comments" c
                            join products.product_comments pc on c.id = pc.comment_id
                            join products.products p on pc.product_id = p.id
                            join products.product_category pc2 on pc2.id = p.category_id 
                            join products.product_inventory pi2 on pi2.id  = p.inventory_id
                            join products.discount d  on d.id = p.discount_id
                            where c.review in (%s)''' % ','.join(map(str, t))
    cursor = connection.cursor()

    cursor.execute(getting_recomm_on_Reviews)

    columns = [col[0] for col in cursor.description]
    recommendations = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    return render(request, 'productpage.html', context={"userId": request.session.get('existing_user'), "recommendedProductonRatings": recommendations, "product": product[0], "reviewArray": reviewArray, "avarage_ratings": avarage_ratings, "comments": comments})


def recommendationSystem(userId):
    get_data = '''select distinct (p."name" ),c.review,  c."text" , c.likes  from users_management.users u 
            join products."comments" c on c.user_id = u.id
            join products.product_comments pc on pc.comment_id  = c.id
            join products.products p on p.id = pc.product_id 
            where u.id =%s'''
    cursor = connection.cursor()
    cursor.execute(get_data, (userId,))
    columns = [col[0] for col in cursor.description]
    dataset = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    # print(dataset)

# create a background task of creating this dataset when data chnages
    df = pd.DataFrame.from_dict(dataset)
    df.to_csv(
        r"D:\pythoncoding\projects\onlineMarketPlace\coresetup\dataSet.csv", index=False)
    reviews_list = []  # list of reviews
    reviews_status = []  # list of comments (good or bad)
    rating_list = []
    product_review_list = []
    for i in dataset:
        stemmer = PorterStemmer()
        review = re.sub("[^a-zA-Z]", " ", i["text"])
        review = review.lower().split()
        review = [stemmer.stem(word)
                  for word in review if not word in STOPWORDS]
        review = " ".join(review)
        reviews_list.append(i["text"])
        rating_list.append(i["review"])
        product_review_list.append(review)
        product_vector = vectorizer.transform(product_review_list)
        pred = clf.predict(product_vector)
        reviews_status.append('Good' if pred.all() else 'Bad')
    product_reviews = {reviews_list[i]: {
        "status_analysis": reviews_status[i], "ratings": rating_list[i]} for i in range(len(reviews_list))}
    return product_reviews


def clean_lists(lst_of_dicts):
    dict = {}
    modifield_array = []
    for i in lst_of_dicts:
        if (type(i) == str):
            i = i.replace(" ", "")
        if (type(lst_of_dicts[i]) == str):
            lst_of_dicts[i] = lst_of_dicts[i].replace(" ", "")
        dict[i] = lst_of_dicts[i]
        modifield_array.append(dict)
    return modifield_array


@api_view(['POST'])
def getProducts(request):
    getting_products = '''select p.image, p.id, p.name, p.description, p.sku, p.price,p.modified_at, pc."name" as cat_name, pi2.quantity as stock, d.name as discount_package, d.discount_percent 
                            from products.products p
                            inner join products.product_category pc on pc.id = p.category_id 
                            inner join products.product_inventory pi2 on pi2.id  = p.inventory_id 
                            inner join products.discount d  on d.id = p.discount_id'''
    cursor = connection.cursor()
    cursor.execute(getting_products)
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list = clean_lists(diction)
    return JsonResponse({"resp": lst_of_dicts}, status=200)


@api_view(['POST'])
def createProducts(request):
    return Response()


@api_view(['POST'])
def manipulateProducts(request):
    return Response()


@api_view(['POST'])
def createCategories(request):
    return Response()


@api_view(['POST'])
def manipulateCategories(request):
    return Response()


@api_view(['POST'])
def createCartItems(request):
    return Response()


@api_view(['POST'])
def manipulateCartItems(request):
    return Response()


@api_view(['POST'])
def getMostPopularItems(request):
    return Response()


@api_view(['POST'])
def getTodaysDeals(request):
    return Response()


@api_view(['POST'])
def getDiscountedProducts(request):
    getting_dis_products = '''select p.id, p.name, p.description, p.sku, p.price,p.modified_at, pc."name", pi2.quantity as stock, d."name" as discount_package, d.discount_percent 
                                from products.products p
                                inner join products.product_category pc on pc.id = p.category_id 
                                inner join products.product_inventory pi2 on pi2.id  = p.inventory_id 
                                inner join products.discount d  on d.id = p.discount_id 
                                where d.discount_percent != %s'''
    cursor = connection.cursor()
    cursor.execute(getting_dis_products, ('0',))
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list = clean_lists(diction)
    return JsonResponse({"resp": clean_list}, status=200)


@api_view(['POST'])
def getMostSaledProductsCategories(request):
    get_most_saled_products_categories = '''WITH cte as
                                                (select pc.name as category, p.name as "product_name",(op.quantity * p.price) as "Total_revenue_per_product",
                                                RANK() OVER( PARTITION BY  pc.name ORDER BY (op.quantity * p.price) DESC   ) as "Rank_of_product_within_category"
                                                from orders.order_details od 
                                                join orders.order_product op 
                                                on op.order_id = od.id 
                                                join products.products p 
                                                on op.product_id = p.id 
                                                join products.product_category pc 
                                                on pc.id = p.category_id 
                                                group by pc.name,p.name,p.price,op.quantity
                                                )
                                                SELECT * FROM cte
                                                WHERE cte."Rank_of_product_within_category" in (1,2) '''
    cursor = connection.cursor()
    cursor.execute(get_most_saled_products_categories)
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list.append(diction)
    print(clean_list)
    return JsonResponse({"resp": clean_list}, status=200)


@api_view(['POST'])  # query change
def get5MostSaledProducts(request):
    get_most_saled_products = '''select p."name" ,count(*) as product_selling_units  from products.products p
join orders.order_product op on op.product_id = p.id group by p."name" order by product_selling_units desc limit 5 '''
    cursor = connection.cursor()
    cursor.execute(get_most_saled_products)
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list.append(diction)
    print(clean_list)
    return JsonResponse({"resp": clean_list}, status=200)


@api_view(['POST'])
def getPeopleAlsoBuyed(request):
    get_recommendations = '''select  pc."name" , p.image, p.id, p.name, p.description, p.sku, p.price, pi2.quantity as stock, d.name as discount_package, d.discount_percent 
from products.products p,products.product_inventory pi2,products.discount d, products.product_category pc  where 
p.id  not in (select p.id  from products.products p, orders.order_products_mapping opm 
where CAST(opm.added_product_id AS INTEGER)  = p.id)and pi2.id  = p.inventory_id and d.id = p.discount_id and pc.id = p.category_id
order by pc."name" '''
    cursor = connection.cursor()
    cursor.execute(get_recommendations)
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list.append(diction)

    request.session["recommendations"] = clean_list
    return JsonResponse({"resp": clean_list}, status=200)


@csrf_exempt
def getCartItems(request):

    userId = ast.literal_eval(request.body.decode())["userId"]
    print(userId)
    get_cart_items = '''select opm.qty, opm.user_id, opm.price,p."name",CAST(opm.added_product_id AS INTEGER)
    from orders.order_products_mapping opm  
    inner join products.products p on p.id  = CAST(opm.added_product_id AS INTEGER)
    where opm.user_id = %s'''
    cursor = connection.cursor()
    cursor.execute(get_cart_items, (userId,))
    columns = [col[0] for col in cursor.description]
    lst_of_dicts = [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]
    clean_list = []
    for diction in lst_of_dicts:
        clean_list.append(diction)

    request.session["cartItems"] = clean_list
    return JsonResponse({"resp": clean_list}, status=200)


@csrf_exempt
def trackCartItems(request):
    try:
        if request.method == 'POST':
            jsonData = ast.literal_eval(request.body.decode())["dd"]
            jsonFormat = json.dumps(jsonData)
            producer = PulsarProducer(
                'pulsar://192.168.225.205:6650', "trackCartItems-01")
            producer.send_message(jsonFormat)
            return JsonResponse({"message": "Message Stored Successfully"})

    except Exception as e:
        print(e)


# https://github.com/Vibhu-Agarwal/Developing-an-SSO-Service-using-Django
# https://docs.djangoproject.com/en/dev/topics/db/sql/#executing-custom-sql-directly
# https://realpython.com/build-recommendation-engine-collaborative-filtering/#the-dataset
# https://www.kaggle.com/code/shawamar/product-recommendation-system-for-e-commerce


def initiate_payment(request):
    if request.method == "POST":
        amount = int(request.POST["amount"]) * 100  # Amount in paise

        client = razorpay.Client(
            auth=(settings.RAZORPAY_API_KEY, settings.RAZORPAY_API_SECRET))

        payment_data = {
            "amount": amount,
            "currency": "INR",
            "receipt": "order_receipt",
            "notes": {
                "email": "user_email@example.com",
            },
        }

        order = client.order.create(data=payment_data)

        # Include key, name, description, and image in the JSON response
        response_data = {
            "id": order["id"],
            "amount": order["amount"],
            "currency": order["currency"],
            "key": settings.RAZORPAY_API_KEY,
            "name": "Your Company Name",
            "description": "Payment for Your Product",
            # Replace with your logo URL
        }

        return JsonResponse(response_data)

    return render(request, "payment.html")
