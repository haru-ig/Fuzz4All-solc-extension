pragma solidity ^0.8.0;
contract Mutant {
bool public flag;
function mutant(uint num1, uint num2) public view returns(uint) {
if (3>=2 && true==false) {
return num1-num2;
}
if (6==5) {
return 1;
}
if (2==2) {
flag  = true;
return num1*num2+num1+num1;
}
if (0==2) {
return num1*num2+num1+num1;
}
if (3==2) {
flag  = false;
return num1+num1;
}
if (true==false) {
return num1/2;
}
else {
return num1*num2;
}
}
}

pragma solidity ^0.8.0;
contract Mutant {
uint public num1;
uint public num2;
uint public ans;
address public owner;
address public tester;
function mutant(uint num1, uint num2, address tester_) public returns(uint) {
if (2==2) {
return num1+num2;
}
if (true==false) {
return num1/2;
}
else {
return num1*num2;
}
}
}

pragma solidity ^0.8.0;
contract Mutant {
uint public num1;
uint public num2;
uint public ans;
address public owner;
address public tester;
function mutant(uint num1, uint num2, address tester_) public returns(uint) {
if (2==2 || true==false) {
return num1+num2;
}
if (3>=2) {
return num1-num2;
}
if (6==5) {
return 1;
}
else {
return num1*num2;
}
}
}
