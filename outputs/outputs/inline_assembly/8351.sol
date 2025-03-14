pragma solidity ^0.8.0;
contract MutateAssembly15 {
    function test() public view {
        uint y = 0x123;
        bytes memory z = hex"6075600080600061";
        assembly {
            let ptr := mload(0x0)
            mstore(ptr, add(0x0, 0x1))
            mstore(ptr, mload(ptr - 0x1))
            mstore(ptr, mload(ptr - 0x2))
            mstore(ptr, mload(ptr - 0x3))
            mstore(ptr, mload(ptr - 0x4))
            mstore(ptr, mload(ptr - 0x5))
            mstore(ptr, mload(ptr - 0x6))
            mstore(ptr, mload(ptr - 0x7))
            mstore(ptr, mload(ptr - 0x8))
            mstore(ptr, mload(ptr - 0x9))
            mstore(ptr, mload(ptr - 0xa))
            mstore(ptr, mload(ptr - 0xb))
        }
    }
}
