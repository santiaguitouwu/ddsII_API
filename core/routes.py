from django.urls import path, include
from rest_framework.routers import DefaultRouter
from core.auth.viewsets.login import LoginViewSet
from core.auth.viewsets.refresh import RefreshViewSet

# Instancia del router
router = DefaultRouter()

# Registro de las rutas para el ProductoViewSet
router.register(r'auth/login', LoginViewSet, basename='login')
router.register(r'auth/refresh', RefreshViewSet, basename='refresh')

# Configurar las URLs para que incluyan las rutas del router
urlpatterns = [
    path('', include(router.urls)),
]