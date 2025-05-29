#!/bin/bash
django-admin startproject landing_site
cd landing_site
python manage.py startapp main
echo "from django.shortcuts import render\ndef home(request): return render(request, 'home.html')\ndef about(request): return render(request, 'about.html')\ndef contact(request): return render(request, 'contact.html')" > main/views.py
echo "from django.urls import path\nfrom . import views\nurlpatterns = [\n    path('home/', views.home),\n    path('about/', views.about),\n    path('contact/', views.contact)\n]" > main/urls.py