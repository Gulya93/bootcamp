*** Test Cases ***
Print   Find highest number
*** Keywords ***
Find highest number
    @{list}=    Create List     1      2       3       5       1       0       -1
    Log     ${list}
    ${maxValue}=    Evaluate    max($list)
    Should be equal      ${maxValue}    5