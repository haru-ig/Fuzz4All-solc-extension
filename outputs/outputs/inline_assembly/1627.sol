pragma solidity ^0.8.0;
contract Mutator3 {
uint256 x;
uint256 y;
constructor() public {
x = 3;
y = 0;
}
function mutate(uint256 _x) public {
x += 5*_x;
y += 1;
}
}
