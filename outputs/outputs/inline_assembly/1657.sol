pragma solidity ^0.8.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
function mutate(uint256 x, uint256 y) public {
a += ONE;
b += ONE;
c += ONE;
x += ONE;
y += ONE;
}
}
