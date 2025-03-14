pragma solidity ^0.8.0;
contract Mutant {
uint256 x;
uint256 t;
address a;
constructor() public {
    t = 6;
    a = msg.sender;
    x = 1;
}
function mutate (uint256 h) public {
    x+=h;
}
}
