pragma solidity ^0.8.0;
contract BitwiseANDNOTXORNAnd_1Bit {
    uint8 x;
    function setX() public {
        x &= 1;
        x ^= 2;
        x &=~0x1;
        x <<= 1;
        x ^= 3;
    }
}
