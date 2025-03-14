pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }
    mapping(bytes32 => B) _storage;
    bytes32 constant _emptyBytes32 = bytes32(0xdbadcafe);
    function setIfEmpty(bytes32 key, B value) public {
        _storage[key] = value;
    }
    function setIfNotEmpty(bytes32 key, B value) public {
        setIfEmpty(key, value);
    }
}
