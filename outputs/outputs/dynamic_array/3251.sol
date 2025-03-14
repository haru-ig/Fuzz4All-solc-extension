pragma solidity ^0.8.0;
contract Mut6 {
    enum B {
        a,
        aa,
        ab
    }
    mapping(bytes32 => B) private _storage;
    function setB(bytes32 key, B value) public {
        _storage[key] = value;
    }
}
