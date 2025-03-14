pragma solidity ^0.8.0;
contract Mut8 {
    enum B {
        a,
        aa,
        ab,
        ba,
        bb
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        while (value == _storage[key]) {
            _storage[key] = B(uint8(value) + 1);
        }
    }
}
