pragma solidity ^0.8.0;
contract MutateAssembly2 {
    function test() public view {
        uint y = 0x123;
        bytes memory z = hex"6075600080600061";
        assembly {
            let ptr := mload(0x0)
            mstore(0x0, add(ptr, 1))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))

            mstore(0x0, mload(0x1))
            mstore(0x0, mload(0x2))
            mstore(0x0, mload(0x3))
            mstore(0x0, mload(0x4))

            mstore(0x0, mload(0x0))
        }
    }
}
