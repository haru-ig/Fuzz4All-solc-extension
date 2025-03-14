pragma solidity ^0.8.0;
contract EthStorage {
    uint256 internal immutable uintValue;
    mapping(address => uint256) internal addressToUint;
    mapping(uint256 => uint256[]) private memoryArrays;
    mapping(uint256 => bytes32[]) private memoryHashes;
    mapping(uint256 => uint256) private memoryMappingOfIdsToAddresses;
    constructor() {
        uintValue = 4;
    }
}
