pragma solidity ^0.8.0;
contract Mutator3 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate3(uint256 _x1, uint256 _x2) public {
x += 5*_x1 - 2*_x2;
y -= 1;
}
}
