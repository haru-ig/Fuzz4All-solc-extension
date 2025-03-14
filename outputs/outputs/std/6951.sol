pragma solidity ^0.8.0;
contract EthStorage {
    mapping(uint256 => uint256[]) internal storageArrays;
    mapping(uint256 => bytes32[]) internal storageHashes;
    mapping(uint256 => uint256) internal mappingOfIdsToAddresses;

    constructor() {
    }
}
