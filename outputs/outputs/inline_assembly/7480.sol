pragma solidity ^0.8.0;


contract Test {
    function test() payable {
        assembly {
            let storage := mload(0x40)
            let memoryAddress := mload(pc)
            let memoryAddressAfter := mload(add(memoryAddress, 8))
            mstore(0x40, add(storage, 0x10))
            mstore(memoryAddressAfter, 0x909)
            mstore(0x0, 0x44)
            mstore(0x0, mload(add(memoryAddress, 0x8)))
            mstore(address(mload(memoryAddress)), sub(storage, gas))
            mstore(memoryAddress, add(memoryAddress, 0x10))
            mstore(memoryAddress, mload(add(memoryAddress, 0x10)))
            mstore(add(memoryAddress, 0x2), 0x55)
            mstore(0x2, 0x99)
            mstore(add(memoryAddress, 0x4), 999)
            mstore(add(memoryAddress, 0x8), 99)
            mstore(memoryAddress, 13951387156551193429)
            for (let i := 0; i < 3; i := add(i, 1)) {
                mstore(2, add(memoryAddress, 4 * i))
                storage := mload(memoryAddress)
            }
        }
    }
}
