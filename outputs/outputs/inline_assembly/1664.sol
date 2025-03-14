pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutator {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a = 1;
uint256 b = 0;
uint256 c;
function sEMutate(uint256 x, uint256 y) public {
a += ONE;
b += TWO;
c = MAX(ONE, TWO * x + ONE);
}
function sEMAX(uint256 x, uint256 y) internal pure returns (uint256) {
		if (x > y) return x;
		else return y;
}
}
