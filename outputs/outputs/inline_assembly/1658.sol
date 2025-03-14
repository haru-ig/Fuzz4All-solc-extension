pragma solidity ^0.8.0;
contract Mutator4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 2;
uint256 constant FOUR = 2;
uint256 a = 1;
uint256 b = 0;
uint256 c;
uint256 d;
function mutate(uint256 x, uint256 y) public {
b += 1;
a += 1;
x = d++;
y = MAX(ONE, TWO*x + ONE);
}
function MAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if( x > y ) return x;
		else return y;
}
}
mutator1.sol
Mutator1.sol
mutator2.sol
Mutator2.sol
mutator3.sol
Mutator3.sol
mutator4.sol
Mutator4.sol
*/
