pragma solidity ^0.8.0;
contract MutatorS {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 a = ONE;
uint256 b = THREE;
uint256 c;
function mutate() public {
c += TWO;
a = b;
SET(TWO);
b += THREE;
a += b;
set();
a = c;
}
function set() internal {
uint256 x = c;
uint256 y = b;
SET(x);
x = c += ONE;
b = x;
x = x -TWO;
SET(ONE);
y = x;
x = (a - b) &y;
b = TWO;
x = a -TWO;
b = (b-x) & y;
}
}
