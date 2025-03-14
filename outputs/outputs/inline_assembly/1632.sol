pragma solidity ^0.8.0;
contract Mutator3 {
uint256 x;
uint256 y = 1;
uint256 z = 1;
function mutate(uint256 _x, uint256 _y, uint256 _z) public {
x += 3*_x*_y*_z;
y -= 2*_y;
z *= 1;
}
}
