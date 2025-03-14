pragma solidity ^0.8.0;
contract Modifiers {
    uint constant x = 1;
    function test (uint x) public {
        assembly {
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
        }
    }
}
