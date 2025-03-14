pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public view returns (uint) {

bytes32 f = sha3(num1, num2);
if (f>2) {
return num1+num2;
}
else if (f>1) {
return num1/2;
}
else {
return num1*num2;
}
}
}
