pragma solidity ^0.8.0;
contract Mutator {
uint256 x;
uint256 y;
address a;
constructor() public {
    a = msg.sender;
    x = 1;
    y = 4;
}
function mutate() public {
    x = x*2;
    y = y*2;
}
}
