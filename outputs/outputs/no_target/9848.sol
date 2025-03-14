pragma solidity ^0.8.0;
contract c {
    bytes memory _memory;
    bytes _storage;
    function c(bytes memory _memory, bytes memory _storage) public {
        _memory = _memory;
        _storage = _storage;
    }
}
