pragma solidity ^0.8.0;
contract Test831B {
    uint8 x;
    function test() public view {
        uint8[] memory y = new uint8[](2);
        y[0] = 0x52;
        y[1] = 0x31;
        (uint8 x,) = abi.decode((y), (uint8));

    }
}
