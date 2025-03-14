pragma solidity ^0.8.0;
contract ChangeExample is MutateExample {
    constructor() {
        value = 33;
    }
}
contract Example {
    function executeExample() public payable {
        new ChangeExample();
        bytes1 memory someBytes;
        string memory someString;
        bool someBool;
        address someAddress;
        bytes32 someBytes32;
        uint16 someUint16;
        uint32 someUint32;
        uint64 someUint64;
        bytes32 someBytes32Bytes32Bytes32;
        address someAddressAddress;
        mapping (address => uint) mapAddressUint;
        bytes32 mappingBytes32Bytes32;
        uint24 someUint24;
        bytes32 someBytes32Bytes32Bytes32Bytes32Bytes32;
        mapping (address => address) mapAddressAddress;
        mapping (address => bytes32) mappingBytes32Bytes32Bytes32Bytes32Bytes32Bytes32Bytes32Bytes32;
        string memory stringMemory;
        uint256 bigUint256;
        address address1;
        address address2;
        address address3;
    }
}
