import json
import os
from django.http import HttpResponse, HttpResponseRedirect, JsonResponse
from django.shortcuts import redirect, render
from django.urls import reverse
from rest_framework.response import Response
from rest_framework.decorators import api_view
from django.contrib.auth import authenticate, login, logout
from onlinemarketplace.forms import UserCreationForm, LoginForm
from django.db import connection
from datetime import date
import hashlib
import re
import requests
from django.contrib.auth.models import User
import json
from pandas import DataFrame


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

            if (user):
                return JsonResponse({"resp": "Users Registered"}, status=200)

    else:
        return render(request, 'signup.html', {})


def user_signup(request):
    return render(request, 'signup.html')

# login page


def user_login(request):
    return render(request, 'login.html')

# logout page


def user_logout(request):
    logout(request)
    return redirect('login')


def productpage(request, id):
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

    print(product[0])
    return render(request, 'productpage.html', context={"product": product[0]})


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
    pass


# https://github.com/Vibhu-Agarwal/Developing-an-SSO-Service-using-Django
# https://docs.djangoproject.com/en/dev/topics/db/sql/#executing-custom-sql-directly
