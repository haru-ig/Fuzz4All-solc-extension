pragma solidity ^0.8.0;
contract Mutators {
    uint constant x = 1;
    function test () public {
        assembly {
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
            mstore(0x50, x)
        }
    }
}
