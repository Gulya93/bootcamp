*** Variables ***
@{list}=     1      2       3       5       1       0       -1

*** Test Cases ***
Find sum testcase
    Find sum
*** Keywords ***
Find sum
    Log     ${list}
     ${list_num}=    Evaluate    list(map(int, ${list}))
     ${sum}=    Evaluate    sum($list_num)
    Should be equal As Numbe  rs     ${sum}    11