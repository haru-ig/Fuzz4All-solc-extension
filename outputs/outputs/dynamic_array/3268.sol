pragma solidity ^0.8.0;

contract Mut11 {
    struct Info {
        uint8  bytes;
        bytes key;
    }
    Info[] public _storage;
    function add(bytes memory name, uint8 value) public {
        while (value == _storage.length) {
            _storage.length++;
        }
        Info storage self = _storage[uint8(value)];
        self.bytes = uint8(value);
        self.key = name;
    }
    function get(bytes memory name) public view returns (uint8) {
        for(uint i = 0; i < _storage.length; i++) {
            Info storage self = _storage[i];
            if (keccak256(abi.encodePacked(self.key)) == keccak256(abi.encodePacked(name))) {
                return self.bytes;
            }
        }
        return uint8(-1);
    }
}
