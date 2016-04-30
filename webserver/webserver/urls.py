from django.conf.urls import patterns, include, url
from django.contrib import admin

from rest_framework import routers
from dinners import views

router = routers.DefaultRouter()
#makes sure that the API endpoints work
router.register(r'api/dinners', views.DinnerViewSet)
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'webserver.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include(router.urls)),
    url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
)
