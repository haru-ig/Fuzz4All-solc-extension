pragma solidity ^0.8.0;
contract Equivalent {
modifier immutable {
_;
}
function equivalent(uint num1, uint num2) public pure {
if (8==8) {
num1+num2;
}
else if (true==false) {
num1/2;
}
else {
num1*num2;
}
}
}
