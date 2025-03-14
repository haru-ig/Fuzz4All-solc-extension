pragma solidity ^0.8.0;
contract Mutant {
function mutant() public view returns(uint) {
if (true) {
return 2;
}
else {
return 3;
}
}
}
