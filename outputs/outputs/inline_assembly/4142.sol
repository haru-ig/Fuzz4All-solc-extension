pragma solidity ^0.8.0;
contract Mutators2 {
    function test () public {
        assembly {
            mstore(0x50, 1)
            mstore(0x50, 2)
            mstore(0x50, 3)
            mstore(0x50, 4)
            mstore(2, 2)
        }
    }
}
