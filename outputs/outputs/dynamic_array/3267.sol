pragma solidity ^0.8.0;
contract Mut9 {
    enum B {
        a,
        aa,
        ab,
        ba,
        bb
    }
    struct s1 {
        mapping(bytes32 => bytes) d;
        s1(bytes memory mem) {
            for(uint8 i = 0; i < 1 << 10; i++) {
                d[keccak256(abi.encodePacked("X", "0x", uint8(i)))] = mem;
            }
        }
    }
    mapping(bytes32 => B) public _storage;
    function setB(bytes32 key, B value) public {
        while (value == _storage[key]) {
            _storage[key] = B(uint8(value) + 1);
        }
    }
    function setB2(bytes32 x, s1 memory x1) public {
        B(4) = B(4);
        B(4) = value;
        B(4) = B(4);
    }
}
