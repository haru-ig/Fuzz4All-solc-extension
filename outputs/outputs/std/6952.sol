pragma solidity ^0.8.0;
contract EthStorage {
    mapping(address => uint256[]) internal memoryArrays;
    mapping(address => bytes32[]) internal memoryHashes;
    mapping(uint256 => address) internal mappingOfIdsToAddresses;
    constructor() {
    }
}
