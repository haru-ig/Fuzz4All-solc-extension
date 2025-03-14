pragma solidity ^0.8.0;
contract MutatorS4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a;
uint256 b = TWO;
uint256 c;
function mutate() public {
SET(a);
PUSH(c);
c += ONE;
a = (b + c);
b = ONE;
}
function SET(uint256 x) internal {
a = x;
}
function PUSH(uint256 x) internal {
b = x;
}
}
