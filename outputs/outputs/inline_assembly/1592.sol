pragma solidity ^0.8.0;
contract Mutator {
uint8 x;
uint8 y;
address a;
constructor() public {
    x = 2;
    y = 4;
    a = msg.sender;
}
function mutate() public {
    if (x >= 0x40) {
        x = x ^ 5;
    } else {
        x = x ^ 6;
    }
    if (y >= 0x50) {
        y = y ^ 5;
    } else {
        y = y ^ 6;
    }
}
}
