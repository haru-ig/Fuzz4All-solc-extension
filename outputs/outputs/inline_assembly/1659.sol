pragma solidity ^0.8.0;
contract Mutator4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 constant FIVE = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 x, uint256 y) public {
b += 1;
a += 1;
x = MAX(ONE, TWO*x + ONE);
y = MAX(ONE, TWO*(y+THREE) + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}

pragma solidity >0.7.0;
contract Mutator2 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 x, uint2
