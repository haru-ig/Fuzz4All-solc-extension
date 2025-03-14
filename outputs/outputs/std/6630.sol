pragma solidity ^0.8.0;
contract Mutate67 {
    uint8[] public x;
    uint8 y;
    constructor () {
        y = 0;
        x = new uint8[](1);
        x[0] = 89;
        x[0] |= 67;
        x[0] |= 7;
    }
}
