pragma solidity ^0.8.0;
contract MutatorS3 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a;
uint256 b;
uint256 c;
function mutate() public {
a += ONE;
b += ONE;
c = (MAX(a + a, TWO * (MAX(b, TWO * (MAX((MAX(c, FOUR)), ONE)), ONE))) + ONE);
}

function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
if( x > y ) return x;
else return y;
}

}
