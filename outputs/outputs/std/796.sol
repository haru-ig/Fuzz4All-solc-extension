pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public pure returns(uint) {
uint x = num1+num2;
if (x>1 || x<2 || x%2!=0) {
x=1;
}
return x;
}
}

pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public pure returns(uint) {
uint x = num1+num2;
if (x==2 || x==3|| x<2 || x==0 || (num2%2!=0)) {
x=1;
}
else if (x>2 || x>3) {
x=2;
}
return x;
}
}
