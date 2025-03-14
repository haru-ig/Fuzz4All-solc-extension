pragma solidity ^0.8.0;
contract MutateAssembly22 {
    function test() public view returns(uint) {
        uint y = 0x123;
        bytes memory z = hex"60756000806000616263";
        assembly {
            let ptr := 32
            mstore(0x0, add(ptr, mload(0x0)))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
            mstore(0x0, mload(0x0))
        }
    }
}
