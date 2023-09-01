Feature:

Scenario:
    * def Category =
    """
    {"CategoryID" : 136915, "CategoryName" : "achimbolte", "Description" : "August Developer Challenge"}
    """

    * url 'https://developer-challenge.cfapps.eu10.hana.ondemand.com/odata/v4/northbreeze/Categories'
    * request Category
    * method post
    * status 201
    * match response contains Category
  