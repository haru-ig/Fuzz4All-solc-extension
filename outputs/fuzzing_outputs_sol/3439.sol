pragma solidity ^0.8.0;
contract LowLevelCallCaller {
    address payable contractAddress;
    address lowLevelFunctionAddress;

    receive() external payable {
        assembly {
            let lowLevelData := mload(0x40)
            pop(0x20)
            lowLevelFunctionAddress := mload(0x20)
            functionMemoryAddress := or(lowLevelFunctionAddress, contractAddress)
            let n
            mstore(add(n, 0x40), 0x20)
            mstore(0x40, n)


            mstore(contractAddress, 0x0)
            sstore(lowLevelData, mload(lowLevelFunctionAddress))
        }
    }
}
