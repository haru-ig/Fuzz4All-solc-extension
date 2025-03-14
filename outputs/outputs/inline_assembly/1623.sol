pragma solidity ^0.8.0;

contract Mutator2 {
uint256 private x;
uint256 private y;
constructor() {
x = 3;
y = 1;
}
function mutate(uint256 _y, uint256 _x) public {
x += _x*_y;
y += 1;
}
}
