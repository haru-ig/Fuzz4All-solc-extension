pragma solidity ^0.8.0;
contract SimpleStorage {
    mapping(bytes32 => uint256) storageStorage;
    bool public isInitialized = false;

    function init() public {
        isInitialized = true;
    }
    function set(bytes32 key, uint256 value) public {
        storageStorage[key] = value;
    }
    function get(bytes32 key) public view returns (uint256) {
        return storageStorage[key];
    }

    function getLength() public view returns (uint256) {
        return storageStorage.length;
    }
}
