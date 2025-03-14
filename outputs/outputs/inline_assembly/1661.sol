pragma solidity ^0.8.0;
uint256 constant ONE = 1;
uint256 constant TWO = ONE;
uint256 constant THREE = ONE;
uint256 constant FOUR = ONE;
uint256 constant MAX_NUMBER = TWO**256 - 1;
uint256 a;
uint256 b;
uint256 c;
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
void mutate(uint256 x, uint256 y) public {
a += 1;
b += 1;
c = MAX(ONE, TWO*x + ONE);
}
}
