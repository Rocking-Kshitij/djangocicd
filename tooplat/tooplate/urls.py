from django.urls import path
from . import views
urlpatterns = [
    path("", views.host_path, name = "main-view"),
    path("index", views.index, name = "main-view"),
    path("setting", views.SettingPage.as_view(), name = "setting-view"),
    path("profile", views.profile_view, name = "profile-view"),
    path("my_wallet", views.wallet_view, name = "wallet-view"),
    path("help-center", views.HelpPage.as_view(), name = "Help-view"),
]