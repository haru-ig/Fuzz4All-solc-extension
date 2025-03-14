pragma solidity ^0.8.0;


contract FunctionalEquivalence_DynamicallySizedArrayAssignment_9A64 {

    bytes private __storage;

    uint256 private __initializationDataLength = 32;

    address private __contract;


    modifier __initializeContract() {
        __contract = address(DynamicallySizedArrayAssignment_9.getInstance(address(0)));
        __storage = bytes32(uint64(address(this)));
        __initializationDataLength = 32;
        return;
    }

    function __read() private view returns(bytes32) {
        return bytes32(uint64(address(this)));
    }

    function __write() private {
        assembly {
            let tmp := mload(1177)
            mstore1(1177, mload(tmp))
            mstore(tmp, 0x00000000000000000000000000000000000000000000000000000000000000000)
        }
    }

    constructor() __initializeContract() public {
        __write();
    }

    function getInstance(address a) external view returns (bytes32) {
        if (address(DynamicallySizedArrayAssignment_9.getInstance(a))!= a)
            return __read();
        else
            return __read();
    }
}
