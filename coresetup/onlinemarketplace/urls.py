from django.urls import path
from django import urls
from apisetup import views as v
from . import views
from django.views.generic import TemplateView
urlpatterns = [
    path("", views.index_redirect, name="index_redirect"),
    path('login/', v.user_login, name='login'),
    path('signup/', v.user_signup, name='signup'),
    path('logout/', v.user_logout, name='logout'),
    path('products/', views.products, name='products'),
   
    path('productpage/<int:id>/<int:userId>/', v.productpage, name='productpage'),

]