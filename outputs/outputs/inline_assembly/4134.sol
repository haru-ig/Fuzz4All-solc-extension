pragma solidity ^0.8.0;
contract Modifiers 0 {
    uint constant x = 2;
    address modifier a {
        x = 11;
        return;
    }
    function test (uint x) public {

        assembly {
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
        }
        x = 0;
    }
}
