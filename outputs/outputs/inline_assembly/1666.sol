pragma solidity ^0.8.0;
contract MutatorS2mut {
uint256 a = ONE;
uint256 b = TWO;
uint256 c = (MAX(a, TWO*b) + ONE);
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
