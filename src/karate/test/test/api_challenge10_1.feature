Feature: OAuth Token Request

Scenario: Request OAuth Access Token
    Given url 'https://ac228e60trial-ga.authentication.eu10.hana.ondemand.com/oauth/authorize'
    And header Accept = 'application/json'
    And request
    """
    { 
     "token_type": "bearer",
     "code": "JNeaKtJwbVSX-lfkvXc-kg486jUtytlY",
     "client_id": "sb-ut-1b066f19-3c47-47d1-b623-101d7da6129a-clone!b266360|cis-central!b14", 
     "client_secret": "cac5cd01-1719-4cca-94b2-4922d8044acb$gwN89QIULcfC-LOeIDQGK63HJLARKmDD6UCWQtIqokU=",
     "response_type": "code"
    } 
    """
    When method get
    Then status 200
    And match response != null
