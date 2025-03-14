pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public pure returns(uint) {
if (2==2) {
return num1+num2;
}
else if (true==false) {
return num1/2;
}
else {
return num1*num2;
}
}
}
