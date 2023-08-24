Feature:

Scenario:
    * url 'https://developer-challenge.cfapps.eu10.hana.ondemand.com/odata/v4/northbreeze/selectProduct'
    * header Content-Type = 'application/json'
    * request { "communityid" : "AchimBolte" }
    * method post
    * status 200
