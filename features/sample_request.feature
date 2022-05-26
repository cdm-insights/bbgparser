Feature: Parse BBG sample request file

Scenario: Extracting headers
  Given the file fixtures/sample_request.bbg
   When parsing the file
   Then we get the headers
     | key           | value              |
     | FIRMNAME      | your_dl_login_name |
     | REPLYFILENAME | getdatatest.out    |
     | SECMASTER     | yes                |
     | PROGRAMNAME   | getdata            |

Scenario: Extracting fields
  Given the file fixtures/sample_request.bbg
    When parsing the file
    Then we get the fields
      | field    |
      | NAME     |
      | TICKER   |
      | CPN      |
      | MATURITY |

Scenario: Extracting records
  Given the file fixtures/sample_request.bbg
    When parsing the file
    Then we get the records
    | Identifier         | Exchange  |
    | 912810CY2          | CUSIP     |
    | US912810CY20       | ISIN      |
    | 000863149          | VALOREN   |
    | T14 11/15/11 Govt  | <NOCOL>    |
    | IBM US Equity      | <NOCOL>    |
    | Fake Equity        | <NOCOL>    |
