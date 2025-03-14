pragma solidity ^0.8.0;
contract Mutator {
uint256 public x;
uint256 public y;
address public a;
constructor() public {
    x = 3;
    y = 4;
    a = msg.sender;
}
modifier lock() {
    x = 5;
    y = 6;
    a = msg.sender;
    _;
}
function mutate() public lock {
    x = x+1;
    y = y+1;
    a = msg.sender;
}
}
