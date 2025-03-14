pragma solidity ^0.8.0;
contract Mutator {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint a = 1;
uint b;
uint c;
function mutate(uint _x, uint _y) public {
b += ONE;
	a += ONE;
	c = TWO*_x + ONE;
}
}
