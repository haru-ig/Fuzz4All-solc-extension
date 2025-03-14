pragma solidity ^0.8.0;
contract Mutators {
    uint constant x = 1;
    uint constant y = 2;
    uint constant z = 3;
    function test () public {
        assembly {
            mstore(0x50, x)
            mstore(0x50, mload(0x50))
            mstore(0x50, mload(0x50))
            mstore(0x50, mload(0x50))
            mstore(0x50, mload(0x50))
        }
        asserteq(x, y);
        asserteq(y, z);
    }
}
