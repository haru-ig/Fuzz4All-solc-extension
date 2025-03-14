pragma solidity ^0.8.0;
struct Mut8b {
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        B(uint8(value) + 168);
    }
}
