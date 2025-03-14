pragma solidity ^0.8.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 _x, uint256 _y) public {
b += 1;
	a += 1;
	c = MAX(1, 2*_x + ONE);
}

function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
