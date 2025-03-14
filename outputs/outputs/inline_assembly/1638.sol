pragma solidity ^0.8.0;
contract Mutator {
uint256 a;
uint256 b;
function mutate(uint256 _x, uint256 _y) public {
a = _x + getNew();
b = _x * _y + a;
}
function getNew() external pure returns(uint256) {
return a + b;
}
}
