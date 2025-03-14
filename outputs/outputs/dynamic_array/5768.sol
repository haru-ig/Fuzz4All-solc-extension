pragma solidity ^0.8.0;
contract Test831 {
    uint8 x;
    function test() public {
        uint[] memory y = new uint[](2);
        y[0] = 0x52;
        y[1] = 0x31;
        x = y[0];
    }
}
