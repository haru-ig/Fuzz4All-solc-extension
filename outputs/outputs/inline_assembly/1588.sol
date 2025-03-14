pragma solidity ^0.8.0;
contract Mutator {
uint256 x;
uint256 y;
address a;
constructor() public {
    x = 3;
    y = 4;
    a = msg.sender;
}
function mutate() public {
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}
