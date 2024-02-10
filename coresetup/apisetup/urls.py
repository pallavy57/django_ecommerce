
from django.urls import include, path
from . import views
from rest_framework_simplejwt import views as jwt_views
from django.conf import settings

urlpatterns = [
    path('registeruser/', views.registeruser, name='registeruser'),
    path('loginUser/', views.loginUser, name='loginUser'),
    path('token/', jwt_views.TokenObtainPairView.as_view(),
         name='token_obtain_pair'),
    path('token/refresh/', jwt_views.TokenRefreshView.as_view(), name='token_refresh'),
    path('getProducts/', views.getProducts, name='getProducts'),
    path('getDiscountedProducts/', views.getDiscountedProducts,
         name='getDiscountedProducts'),
    path('get5MostSaledProducts/', views.get5MostSaledProducts,
         name='get5MostSaledProducts'),
    path('getMostSaledProductsCategories/', views.getMostSaledProductsCategories,
         name='getMostSaledProductsCategories')     
]
