Feature: Division

  Scenario Outline: Divide two numbers
    Given the input "<input>"
    When the cal is run
    Then the output should be "<output>"

  Examples:
    | input | output |  
    | 2/2   | 1      |  
    | 99/2  | 49     |  
    | 99/2.0 | 49.5  |

