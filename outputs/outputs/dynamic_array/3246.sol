pragma solidity ^0.8.0;
contract Mut7 {
    enum B {
        a,
        aa,
        ab
    }
    struct X {
        bytes32 key;
        B value;
    }
    mapping(X memory) _storage;
    function setB(bytes32 key, B value) public {
        _storage[X({key: key}, value)] = bytes32(0x6d0);
    }
}
