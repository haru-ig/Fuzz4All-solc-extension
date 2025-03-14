pragma solidity ^0.8.0;

contract EvmFabric {
    mapping (address => EvmFabric) internal storageEvmFabrics;
    mapping (address => address) public storageAddresses;
    mapping (address => address[]) public storageEvmFabricAddresses;
    uint256 public counter;
    bool public storageInitialized;
    mapping (bytes32 => address[]) public storageAddressesByKey;
    uint256[] public storageDataCounters;
    uint256[] public storageData;
    address[] public storageCallers;


    constructor() internal {
        storageInitialized = true;
    }


    function getEvmFabricAddress() public returns(address storageEvmFabricAddress) {
        return storageAddresses[msg.sender];
    }


    function evmFabricExist(address addressToCheckIn) public view returns (bool evmFabricExist) {
        bytes32 keyToCheck = keccak256 (abi.encodePacked(addressToCheckIn));
        return (storageAddressesByKey[keyToCheck].length == 0);
    }


    function getEvmFabricAddresses(address addressToGetIn) public returns(address[] storageEvmFabricAddresses) {
        address storageEvmFabricAddress;
        bytes32 keyToSearch = keccak256 (abi.encodePacked(addressToGetIn));
        storageEvmFabricAddress = storageAddressesByKey[keyToSearch][0];
        if (storageEvmFabricAddress == address(0)) {
            return storageEvmFabricAddresses;
        } else if (storageEvmFabricAddress == address(y)) {
            return storageEvmFabricAddresses;
        } else if (storageEvmFabricAddress == address(z)) {
            return storageEvmFabricAddresses;
        } else {
            storageEvmFabricAddresses = storageEvmFabricAddresses[0];
            for(uint256 i; i < storageEvmFabricAddresses.length; i++) {
                if (address(storageEvmFabricAddresses[i]) == storageEvmFabricAddress) {
                    return storageEvmFabricAddresses;
                }
            }
