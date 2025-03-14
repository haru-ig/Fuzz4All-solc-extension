pragma solidity ^0.8.0;
contract InlineAssembly10 {
    function test() public returns(string memory) {
        return string(abi.encodePacked(uint8(0x55), uint8(0xf5), char(128)));
    }
}
