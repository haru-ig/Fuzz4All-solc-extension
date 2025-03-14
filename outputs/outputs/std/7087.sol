pragma solidity ^0.8.0;
contract BitwiseSHLXORAndBitwiseXOR {
    uint256 a;
    function setX() public {
        a = (a << (24^16)) + (a >> (24^16)) + (a << (24^6)) + (a >> (24^6)) +
        (a << (24^2)) + (a >> (24^2)) + (a << 1) + (a >> 31) + 0x1D000000;
    }
}
