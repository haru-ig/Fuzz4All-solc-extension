pragma solidity ^0.8.0;
contract EthStorage {
    address public owner;
    uint256[] storageArrays;
    bytes32[] public storageHashes;
    mapping(uint256 => address) public mappingOfIdsToAddresses;
    constructor() {
        address _owner = msg.sender;
        mappingOfIdsToAddresses[_owner] = _owner;
        owner = _owner;
    }
}
