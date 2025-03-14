pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
uint256 t;
address a;
uint256 y;
require(x < 10);
constructor() public {
    x = 1;
    t = 6;
    a = msg.sender;
    y=0;
}
function mutate (uint256 h) public {
    x+=h;
}
}
