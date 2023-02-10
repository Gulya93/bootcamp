*** Variables ***
@{list}=    Create List     1      2       3       5       1       0       -1
*** Test Cases ***
Test1   Find lowest value
Test2   Find highest number
*** Keywords ***
Find lowest value
    Log     ${list}
    ${lowValue}=    Evaluate    min($list)
    Should be equal     ${lowValue}    -1
Find highest number
    @{list}=    Create List     1      2       3       5       1       0       -1
    Log     ${list}
    ${maxValue}=    Evaluate    max($list)
    Should be equal      ${maxValue}    5