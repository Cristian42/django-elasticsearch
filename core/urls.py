from django.conf.urls import url

from . import views

urlpatterns = [
	url(r'^autocomplete/', views.autocomplete_view, name='autocomplete-view'),
	url(r'^student', views.student_detail, name='student-detail'),
	url(r'^$', views.HomePageView.as_view(), name='index-view'),
]
