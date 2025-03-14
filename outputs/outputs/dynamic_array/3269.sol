pragma solidity ^0.8.0;
contract Mut8b {
    enum B {
        a,
        aa,
        ab,
        ba,
        bb
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        B(uint8(value) + 1);
    }
}
