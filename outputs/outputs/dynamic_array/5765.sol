pragma solidity ^0.8.0;
contract Test831A {
    uint8 x;
    function test() public payable {
        uint8[] memory y = new uint8[](2);

        y[0] = 0x52;
        y[1] = 0x31;
        x = y[0];
    }
}
