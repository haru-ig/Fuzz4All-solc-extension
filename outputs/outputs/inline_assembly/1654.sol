pragma solidity ^0.8.0;
contract Mutator3 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 x, uint256 y) public {
b += 1;
a += 1;
c = MAX(ONE, TWO*x + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}

pragma solidity ^0.8.0;
contract Mutator1 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function mutate(uint256 x, uint256 y) public {
b += 1;
a += 1;
x = MAX(ONE, TWO*x + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
