Feature: Use "cf curl /v2/service_instances -X GET" to get instance without authorization issue

Scenario:
    * url 'https://api.cf.us10-001.hana.ondemand.com/v2/service_instances'
    * header Authorization = 'bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoidWFhLWlkLTQ3NCIsImVtYWlsIjoiZW1haWwtMzQxQHNvbWVkb21haW4uY29tIiwic2NvcGUiOlsiY2xvdWRfY29udHJvbGxlci5hZG1pbiJdLCJhdWQiOlsiY2xvdWRfY29udHJvbGxlciJdLCJleHAiOjE0NDk1MzE1NDF9.u4nzpxrt7bK8gNoAaNNoMMJRQEcODs8R-Cx1cB255Cg'
    * header Host = 'api.cf.us10-001.hana.ondemand.com'
    * header Cookie = ''
    * method get
    * status 200
  