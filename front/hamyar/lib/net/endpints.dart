// path('user/', UserRecordView.as_view(), name='users'),
//     path('nurse/list/', views.NurseList.as_view()),
//     path('nurse/create/', views.CreateNurse.as_view()),
//     path('nurse/<int:pk>/', views.NurseDetail.as_view()),
//     path('rate/list/', views.RateList.as_view()),
//     path('rate/create/', views.RateCreate.as_view()),
//     path('rate/<int:pk>/', views.RateDetail.as_view()),
// ignore_for_file: constant_identifier_names
const String apiKey = 'Token 6799edae747a64639d50a8d0a4782f89aa1771bf';
const String baseUrl = 'https://epic1729.pythonanywhere.com/';
const String e_user = 'api/user/';
const String e_get_nurse_list = 'api/nurse/list/';

/// add id when invoke following endpoint.
const String e_get_nurse_update = 'api/nurse/';

/// add id when invoke following endpoint.
const String e_get_nurse_detail = 'api/nurse/';
const String e_create_nurse = 'api/nurse/create';
const String e_create_rate = 'api/rate/create';
