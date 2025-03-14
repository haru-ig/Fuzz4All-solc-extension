pragma solidity ^0.8.0;
contract Mutator3 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate(uint256 _x, bool _bool) public {
x += 5*_x*_x*_x*_x*_x*_x*_x*_x*_x*_x*_x*_x*_bool;
y -= 1;
}
}
