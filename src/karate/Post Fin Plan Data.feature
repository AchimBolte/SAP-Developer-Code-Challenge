Feature: Post Financial Plan Data

  Background:
    * configure proxy = {nonProxyHosts: ['er1-001-api.wdf.sap.corp']}
    * url 'https://cc3-715-api.wdf.sap.corp'
    * header Accept = 'application/json'
    * def payload =
    """
    { PlanDataAggrgnLvlFieldsString : 'LedgerFiscalYear,PlanningCategory,CompanyCode,FiscalYearPeriod,GLAccount,BusinessTransactionCategory,AmountInCompanyCodeCurrency,CompanyCodeCurrency',
      PlanDataRplcScopeFieldsString : '', to_FinPlanningEntryItemTP :
       { results : [
       {
         PlanningCategory : "PLN",
         LedgerFiscalYear : "2024",
         GLAccount : "400000",
         CompanyCode : "0001",
         CompanyCodeCurrency : "EUR",
         AmountInCompanyCodeCurrency : "-224501.00",
         FiscalYearPeriod : "001.2024"
       },
       {
         PlanningCategory : "PLN",
         LedgerFiscalYear : "2024",
         GLAccount : "400000",
         CompanyCode : "0001",
         CompanyCodeCurrency : "EUR",
         AmountInCompanyCodeCurrency : "-424501.00",
         FiscalYearPeriod : "005.2024"
       },
       {
         PlanningCategory : "PLN",
         LedgerFiscalYear : "2024",
         GLAccount : "400000",
         CompanyCode : "0001",
         CompanyCodeCurrency : "EUR",
         AmountInCompanyCodeCurrency : "-304501.00",
         FiscalYearPeriod : "002.2024"
       },
       {
         PlanningCategory : "PLN",
         LedgerFiscalYear : "2024",
         GLAccount : "400000",
         CompanyCode : "0001",
         CompanyCodeCurrency : "EUR",
         AmountInCompanyCodeCurrency : "-104501.00",
         FiscalYearPeriod : "006.2024"
       },
       {
         PlanningCategory : "PLN",
         LedgerFiscalYear : "2024",
         GLAccount : "400000",
         CompanyCode : "0001",
         CompanyCodeCurrency : "EUR",
         AmountInCompanyCodeCurrency : "0.00",
         FiscalYearPeriod : "001.2024"
       }
      ]
   }
 }
"""

  Scenario: post FinancialPlanData returns 201 
    Given path '/sap/opu/odata/sap/API_FINPLANNINGDATA_SRV/FinancialPlanData'
    And request payload
    When method post
    Then status 201

