pragma solidity ^0.8.0;
contract Mutator {
uint256 a = 1;
uint256 b = 1;
function mutate(uint256 _x, uint256 _y) public {
a += 1;
b += 2*_x;
}
}
