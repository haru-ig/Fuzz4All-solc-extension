pragma solidity ^0.8.0;
contract BitwiseXORAndSHLXORAnd {
    uint256 a;
    function setX() public {
        a = ((a << 24) & 0xffffff00) + ((a >> 24) & 0xffffff00) +
        (a + (a << 16)) + (a + (a >> 6)) + 0x1D000000;
    }

}
