*** Settings *** 
# 1) Importing test libraries, resource files and variable files.
# 2) Defining metadata for test suites and test cases.
Documentation    A test suite containing test cases 
# Mô tả nội dung test
# Library
#
# Resource
#

Suite Setup
# Sử dụng 1 lần ban đầu trước khi các cases chạy
Suite Teardown
# Sử dụng 1 lần ban đầu sau khi các cases chạy

Test Setup
# Sử dụng thiết lập trc khi chạy cho mỗi test cases
Test Teardown
# Sử dụng thiết lập sau khi chạy cho mỗi test cases
Test Template
# Cho phép chuyển test cases thông thường theo hướng dữ liệu

*** Variables ***
# Định nghĩa các biến sử dụng trong test cases và keywords, xây dựng kịch bản test và maintain dễ hơn


*** Test Cases ***
# Creating test cases from available keywords.

*** Keywords ***
# Là các step để sử dụng cho việc chuẩn bị và kiểm tra kết quả trong test cases, có thể gọi đến các keyword khác để thực hiện keyword khác

*** Comments ***
# Additional comments or data. Ignored by Robot Framework.

# Tasks: Cho phép lựa chọn các test cases để thực thi

# $ để khai báo trước 1 biến --> Ex: ${NAME}         Robot Framework

# @ để khai báo biến có kiểu list 
# --> Ex: @{MANY}         one         two      three      four
# ...             five        six      seven

# & sử dụng khai báo biến có kiểu dictionary
# --> Ex: &{USER 1}       name=Matti    address=xxx         phone=123

# % sử dụng để khai báo biến môi trường

# khai báo biến local --> ${a}    Set Variable   ${4}
# khai báo biến global --> Set Global Variable                  ${c}
# Ex: TC004 - Xet biet global
#  ${a}                 Set Variable    ${5}
#  ${b}                 Set Variable    ${4}
#  ${tong}              Evaluate        ${a}+${b}+${c}
#  Log To Console       Tổng 3 số nguyên: ${a} + ${b} + ${c} là ${tong}

# {CURDIR} -- lấy đường dẫn hiện tại
# {TEMPDIR} -- lấy đường dẫn thư mục temp
# {EXECDIR} -- trả về đường dẫn project
# {/} -- ký tự ngăn cách của thư mục \
# {\n} -- ký tự xuống dòng

# Set Variable có thể sử dụng cho các biến {True} {False} {None} {null} {space}

# Vòng lặp
# Ex: FOR    ${animal}    IN    cat    dog
#       Log to console    ${animal}
#   END
# Vòng lặp với 1 list
# Ex:  FOR    ${index}    ${item}    IN ENUMERATE    @{LIST}
#     log to console    ${index} value ${item}
# END
# Vòng lặp với nhiều list
# Ex: FOR    ${number}    ${name}    IN ZIP    ${NUMBERS}    ${NAMES}
# 	log to console    ${number} VALUE ${name}
# END
# Vòng lặp với dictionary
# *** Variables ***
# &{DICT}          a=1    b=2    c=3
# FOR  ${key}   IN    @{DICT}
#      Log to console   Key is '${key}' and value is '${DICT}[${key}]'.
# END
# Keyword thoát loop
#TC01 - Exiting for loop
#   ${text} =    Set Variable    ${EMPTY}
#   FOR    ${var}    IN    one    two
#      Run Keyword If    '${var}' == 'two'    Exit For Loop
#      ${text} =    Set Variable    ${text}${var}
#      log to console      ${text}
#   END
#   Should Be Equal    ${text}    one



