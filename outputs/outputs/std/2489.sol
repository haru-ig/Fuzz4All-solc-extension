pragma solidity ^0.8.0;
contract ArrayContract {
    mapping (bytes32 => int) array;

    function set(bytes32 key, int value) public {
        array[key] = value;
    }

    function get(bytes32 key) public view returns (int memory value) {
        return array[key];
    }

    function getStorage() public returns (bytes32 storage storageStore) {
        address store = array;
        storageStore = storage;
    }
}
