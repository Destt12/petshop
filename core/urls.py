from django.urls import path, include
from django.contrib import admin
from .views import *
from rest_framework import routers

#PARA CREAR EL API :

router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('tipo_productos', TipoProductoViewset)
router.register('cupon', CuponViewset)
router.register('Carrito', CarritoViewset)
router.register('User', UserViewset)



urlpatterns = [
        
        path('', index, name="index"),
        path('index_api/', index_api, name="index_api"),
        path('about/',about,name="about"),
        path('blogSingle/',blogSingle,name="blogSingle"),
        path('blog/',blog,name="blog"),
        path('cart/',cart,name="cart"),
        path('checkout/',checkout,name="checkout"),
        path('checkout/<str:codigo_cupon>/',checkout,name="checkout_cupon"),
        path('contact/',contact,name="contact"),
        path('productSingle/',productSingle,name="productSingle"),
        path('product/',product,name="product"),
        path('wishlist/',historial,name="historial"),
        path('product-details/<int:id>/', product_details, name='product-details'),
        path('seguimiento/', cambiar_estado_seguimiento, name='cambiar_estado_seguimiento'),


        #cosas del carrito
        path('agregar/<id>/', agregar, name='agregar'),
        path('actualizar/<id>/', actualizar, name='actualizar'),
        path('eliminar/<id>/', eliminar, name='eliminar'),

        #cosas de user
        path('register/',register,name="register"),
        path('edit/', edit, name='edit'),
        path('cancelar-suscripcion/', cancelar_suscripcion, name='cancelar_suscripcion'),
        path('eliminar-perfil/', eliminar_perfil, name='eliminar_perfil'),

        #CRUD
        path('add/',add,name="add"),
        path('delate/<id>/', delate, name='delate'),
        path('update/<id>/', update, name='update'),


        #CRUD CUPONES 
        path('crear/', crear_cupon, name='crear_cupon'),
        path('listar/', lista_cupones, name='lista_cupones'),
        path('actualizar_cup/<id>/', actualizar_cupon, name='actualizar_cupon'),
        path('elimina_cup/<id>/', eliminar_cupon, name='eliminar_cupon'), 

        #PATH DE API
        path('api/', include(router.urls)), 

]