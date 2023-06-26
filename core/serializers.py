#SE ENCARGA DE CONVERTIR LOS ARCHIVOS A JSON 

from .models import *
from rest_framework import serializers


class TipoProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields = '__all__'

class ProductoSerializer(serializers.ModelSerializer):
    #agregar clave FK 
    tipo = TipoProductoSerializer(read_only=True)

    class Meta:
        model = Producto
        fields = '__all__'

class CuponSerializer(serializers.ModelSerializer):
    class Meta:
        model = Cupon
        fields = '__all__'

class CarritoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Carrito 
        fields = '__all__'


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = '__all__'
