pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        _storage[key] = value;
    }
}
