pragma solidity ^0.8.0;
contract Mutator {
uint8 x;
uint8 y;
constructor(uint8 number) public {
    x = number;
    y = x;
}
function mutate() public {
    x = 451;
    y = x;
}
}
