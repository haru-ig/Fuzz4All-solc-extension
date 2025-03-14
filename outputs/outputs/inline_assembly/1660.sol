pragma solidity ^0.8.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 x, uint256 y) public {
	uint256 z = MAX(x + 1, TWO*y + ONE);
	a += 1;
	b += 1;
	c = z;
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
