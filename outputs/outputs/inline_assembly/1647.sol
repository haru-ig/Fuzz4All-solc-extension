pragma solidity ^0.8.0;
contract Mutator {
	constructor() {
		a = 1;
		b = 1;
	}
	uint256 constant ONE = 1;
	uint256 constant TWO = 1;
	uint256 constant THREE = 2;
	uint256 constant FOUR = 2;
	uint256 a;
	uint256 b;
	uint256 c;
	function mutate(address _x, uint256 _y) public {
		b += 1;
		a += 1;
		c = 2*_x + ONE;
	}
}
