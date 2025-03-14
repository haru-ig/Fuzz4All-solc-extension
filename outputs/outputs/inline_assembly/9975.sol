pragma solidity ^0.8.0;
contract G {
    uint8 i;
    uint8 x;
    constructor() public {
        i = 0xFF;
        x = 0xFF;
        x = i + x;
        x = i + x;
        x = i + x;
    }
}
