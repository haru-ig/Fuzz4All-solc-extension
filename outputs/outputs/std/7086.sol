pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    function setX() public {
        a = ((a << 16) & 0x00ffffff) + ((a >> 8) & 0x00ffffff) + ((a << 16)) +
        (a + (a << 8)) + ((a >> 24)) + 0x1D000000;
    }
}
