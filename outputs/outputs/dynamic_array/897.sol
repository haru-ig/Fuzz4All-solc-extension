pragma solidity ^0.8.0;
contract NewSolidity {
    function x() public view returns (uint) {
        return uint(uint8(bytes(abi.encodePacked(bytes1(uint8(0)), bytes2(uint8(198), uint8(100)), bytes3(uint8(109), uint8(1))), "Hello There")) == 0x36);
    }
}
