pragma solidity ^0.8.0;
contract Mutators {
    function test () public {
        assembly {
            mstore(0x50, 1)
            mstore(0x50, 2)
            mstore(0x50, 3)
            mstore(0x50, 4)
        }
    }
    function test_2 () public {
        assembly {
            mstore(2, 2)
        }
    }
}
