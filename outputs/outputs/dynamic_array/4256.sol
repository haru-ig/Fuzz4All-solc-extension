pragma solidity ^0.8.0;
contract G {
    address x;
    uint8[] array;
    constructor() public {
        array = new uint8[](1);
        array[0] = 1232;
        x = address(0);
    }
}
