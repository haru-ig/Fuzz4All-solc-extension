pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint5 num1, uint5 num2) public view returns(uint5) {
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
