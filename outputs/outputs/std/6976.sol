pragma solidity ^0.8.0;
contract EthMemory {
    uint256 internal immutable uintValue;
    address internal immutable addressValue;
    uint256 internal immutable uintValue2;
    uint256 internal immutable uintValue3;
    mapping(address => uint256) internal addressToUint;
    mapping(uint256 => uint256[]) private memoryArrays;
    mapping(uint256 => bytes32[]) private memoryHashes;
    mapping(uint256 => uint256) private memoryMappingOfIdsToAddresses;
    uint256[] array;
    uint256[] hashArray;
    bool boolValue;
    constructor() {
        uintValue = 4;
        uintValue2 = 3;
        uintValue3 = 1;
        boolValue = true;
        address[] memory a;
        address[] memory b;
        addressToUint[a] = uintValue;
        addressToUint[b] = 0;
        memoryArrays[uintValue] = array;
        memoryHashes[uintValue] = hashArray;
        addressValue = 0x123123123123123;
        address[] memory c = [];
    }
}
