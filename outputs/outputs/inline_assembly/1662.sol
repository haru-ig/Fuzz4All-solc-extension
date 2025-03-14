pragma solidity ^0.8.0;
contract MutatorS2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a = ONE;
uint256 b = TWO;
uint256 c;
function mutate() public {
a += ONE;
b += ONE;
c = (MAX(a, TWO*b) + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
