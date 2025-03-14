pragma solidity ^0.8.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b;
uint256 c;
bool flag = true;
function mutate2() public {
	a += 1;
	b += 1;
	c = FOUR*_x + ONE;
}
}
