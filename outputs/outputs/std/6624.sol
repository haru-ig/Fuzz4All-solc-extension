pragma solidity ^0.8.0;
contract Mutate65 {
    uint8[] public y;
    constructor () {
        uint8 x;
        x = 2;
        y = [3, 2, 1, 1];
        x &= y[2];
    }
}
