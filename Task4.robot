*** Test Cases ***
Test1
    ${C1}       set variable        ${0}
    ${F1}       set variable       ${32.0}
    Check formula       ${C1}   ${F1}
    Check formula       ${350}   ${662}
    Check formula       ${-32}   ${-25.6}
    Check formula       ${100}   ${212}
*** Keywords ***
Check formula
    [Arguments]     ${C1}   ${F1}
    ${Tf} =    Evaluate     float(${9/5})*int(${C1}) + int(${32})
    Should be equal     ${Tf}    ${F1}
