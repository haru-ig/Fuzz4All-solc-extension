pragma solidity ^0.8.0;
contract MutatorS3 {
uint256 constant ONE = 1;
uint256 constant TWO = 2;
uint256 constant THREE = 1;
uint256 a = TWO;
uint256 b = THREE;
uint256 c;
function mutate() public {
a += a;
b += a;
c = (MAX(a, Two*b) + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
