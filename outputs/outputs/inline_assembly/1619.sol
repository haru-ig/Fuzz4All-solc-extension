pragma solidity ^0.8.0;
contract Mutator2 {
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate(uint256 _x) public {
x += 5*_x;
y -= 1;
}
}
