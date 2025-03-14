pragma solidity ^0.8.0;
contract Mutate66 {
    uint8[] public y;
    constructor () {
        uint8 x;
        x = 1;
        y = [1, 2, 3];
        y[0] &= ~y[0];
    }
}
