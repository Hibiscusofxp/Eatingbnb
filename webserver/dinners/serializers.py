from dinners.models import Dinner
from rest_framework import serializers

class DinnerSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Dinner
        fields = ('name', 'active', 'created')