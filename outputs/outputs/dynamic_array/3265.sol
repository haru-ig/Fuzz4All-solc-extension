pragma solidity ^0.8.0;
contract Mut10 {
    enum B {
        a,
        aa,
        ab,
        ba,
        bb
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        _storage[key] = B(uint8(value) + 1);
        _storage[bytes32(uint8(key) + uint64(keccak256(abi.encode(key))))] = B(uint8(value) + 1);
    }
}



pragma solidity ^0.8.0;
contract Mut11 {
    mapping(bytes32 => bool) public _storage;
    bytes32 storedhash;
    mapping(bytes32 => bool) public _used;
    function set(bytes32 key, bool data) public {
        storedhash = keccak256(abi.encodePacked(key, data));
        _storage[key] = data;
        _used[key] = true;
    }
    function is_used(bytes32 key) public view returns (bool) {
        return _used[key];
    }
}
