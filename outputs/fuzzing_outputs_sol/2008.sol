pragma solidity ^0.8.0;
contract Mutater7 {
    struct Storage {
        uint32 value;
    }
    Storage storage _storage;
    function mutatedFunction(uint32 value) public {
        _storage.value = value;
    }
}
