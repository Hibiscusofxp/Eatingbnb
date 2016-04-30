from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from rest_framework import permissions
from dinners.models import Dinner
from dinners.serializers import DinnerSerializer

# Create your views here.
class DinnerViewSet(viewsets.ModelViewSet):
    # this fetches all the rows of data in the Fish table
    queryset = Dinner.objects.all()
    serializer_class = DinnerSerializer