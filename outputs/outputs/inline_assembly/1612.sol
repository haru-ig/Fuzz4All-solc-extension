pragma solidity ^0.8.0;
contract Mutator2 {
uint256 x;
uint256 y;
address a;
constructor() public {
    a = msg.sender;
    x = 5;
    y = 6;
}
function mutate(uint256 _x) public {
x += _x-1;
y = y-3;
}
}
