pragma solidity ^0.8.0;
contract Mutator {
uint256 constant ONE = 1;
uint256 constant TWO = 2;
uint256 constant THREE = 1;
uint256 constant FOUR = 1;
uint256 x = 1;
uint256 y;
uint256 t = 1;
function mutate(uint256 _x, uint256 _y) public {
if (flag) {
y += 1;
}
else {
y += 2;
x = 2*_x + ONE;
}
}
}
