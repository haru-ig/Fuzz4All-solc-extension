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
modifier myModifier {
require(a == msg.sender, "Only the contract owner can do this.");
_;
}
function mutate(uint256 _x) public myModifier {
x += _x+2;
y = y-1;
}
}
