import requests
from django.shortcuts import redirect, render
from django.template import loader 
from django.http import HttpResponse
# return HttpResponse("Hello, world. You're at the polls index.")
from pathlib import Path
def index(request):
    
    template = loader.get_template('homepage.html') # getting our template  
    return HttpResponse(template.render())       # rendering the template in HttpResponse  


def index_redirect(request):
    return render(request, 'login.html')
def products(request):
    response = requests.post("http://127.0.0.1:8000/apis/getProducts/")
    all_products = response.json()
    tokens = {"refresh":request.session.get('refresh'), "access": request.session.get('access') }
    return render(request, 'products.html', context={"tokens":tokens,"all_products":all_products})