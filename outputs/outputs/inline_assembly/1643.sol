pragma solidity ^0.8.0;
contract Mutator {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b;
uint256 c;
bool flag = true;
function mutate(uint256 _x, uint256 _y) public {
b += 1;
	a += 1;
	c = 2*_x + ONE;
}
}
