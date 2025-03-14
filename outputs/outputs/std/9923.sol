pragma solidity ^0.8.0;
contract S9Mutated10B11 {
    uint8 constant minValue = 0;
    uint8 constant maxValue = 255;
    uint8 b = 0;
    constructor () {
    }
    function change(uint8 x) public {
        b = x;
    }
}
contract S11Mutated10B11 {
    uint8 constant minValue = 0;
    uint8 constant maxValue = 255;
    uint8 b;
    constructor () {
        b = minValue;
    }
    function change(uint8 x) public {
        b = x;
    }
}
