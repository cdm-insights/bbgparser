Feature: Parse BBG request file

Scenario: Extracting headers
  Given the file fixtures/override_request.bbg
   When parsing the file
   Then we get the headers
     | key           | value        |
     | FIRMNAME      | firmabc      |
     | REPLYFILENAME | override.out |
     | PROGRAMNAME   | getdata      |
     | PROGRAMFLAG   | oneshot      |
     | DERIVED       | yes          |

Scenario: Extracting fields
  Given the file fixtures/override_request.bbg
    When parsing the file
    Then we get the fields
      | field            |
      | MTG_PREPAY_TYP   |
      | MTG_PREPAY_SPEED |
      | MTG_WAL          |

Scenario: Extracting records
  Given the file fixtures/override_request.bbg
    When parsing the file
    Then we get the records
      | identifier     | blank_field | number_of_overrides | override_name  | override_value   | override_name  | override_value |
      | 073914VW0 Mtge |             | 2                   | MTG_PREPAY_TYP | MTG_PREPAY_SPEED | CPR            | 90             |
