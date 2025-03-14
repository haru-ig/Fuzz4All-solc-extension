pragma solidity ^0.8.0;
contract Mut6 {
    enum B {
        a = 1,
        aa = 2,
        ab = 3
    }
    mapping(bytes32 => B) _storage;
    function setB(bytes32 key, B value) public {
        _storage[key] = value;
    }
}
