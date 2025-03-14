pragma solidity ^0.8.0;
contract Test832 {
    uint24 x;
    function test() public {
        uint8[] memory y = new uint8[](2);
        y[0] = 0x52;
        y[1] = 0x31;
        x = (uint24)y[0];
    }
}
