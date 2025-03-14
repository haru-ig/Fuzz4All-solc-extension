pragma solidity ^0.8.0;
contract Test832C{
    uint8 x;
    constructor () public {
        uint8[] memory z = new uint8[](1);
        x = z[1];
    }
}
