pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public view returns(uint) {
uint iDiv = num1/num2;
return num1==2*iDiv? iDiv : iDiv/2;
}
}

pragma solidity ^0.8.0;
contract Mutant {
function mutant(uint num1, uint num2) public view returns(uint) {
uint iDiv = num1/num2;
return num1==2*iDiv? iDiv : iDiv/2;
}
function xx() public view returns(uint) {
return 50-49;
}
}
