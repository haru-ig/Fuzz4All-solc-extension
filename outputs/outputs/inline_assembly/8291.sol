pragma solidity ^0.8.0;
contract InlineAssembly9 {
    function test() public view returns(string memory) {
        uint memory x = 256;
        mstore(0x40, x);
        mstore(0x00, "Hello world!");
        x := mload(0x00);
        s := mload(0x40);
        return s;
    }
}
