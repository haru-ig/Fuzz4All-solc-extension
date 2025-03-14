pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public pure returns(uint) {
if (true&true) {
return num1+1;
}
else if (2==2) {
return num1+num2;
}
else {
return num1*num2;
}
}
}
