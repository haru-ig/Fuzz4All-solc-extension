pragma solidity ^0.8.0;
contract Mutator4 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 15;
}
function mutate(uint256 _x) public {
x -= 5*_x;
y += 1;
}
}
