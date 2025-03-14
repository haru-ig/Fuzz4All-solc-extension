pragma solidity ^0.8.0;
contract Semantic {
function semantic(uint num1, uint num2) internal pure returns(uint) {
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
