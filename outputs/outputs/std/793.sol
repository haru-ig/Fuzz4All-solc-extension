pragma solidity ^0.8.0;
contract Mutant2 {
function mutant(uint num1, uint num2) public view returns(uint) {
if (num2>=2) {
return (num1+num2)/2;
}
else if (num2>=true) {
return (num1+num2)/2;
}
else {
return (num1+num2)/2;
}
}
}
function test(uint num1, uint num2) public{

if (true) {
return;
}
else if (456==456) {
return;
}
else if (true) {
uint x;
if (456==456) {
return;
}
return;
}
else if (2+2==2) {
if (true) {
uint x;
return;
}
return;
}
else {
uint x = mutant(2+1, 3*5);
return;
}
}
}
