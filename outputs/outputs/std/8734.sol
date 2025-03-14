pragma solidity ^0.8.0;
contract Example {
    address payable _address1;
    address payable _address2;
    bytes1 _byte;
    bytes2 _bytes;
    uint8 _u8;
    uint16 _u16;
    uint32 _u32;
    uint64 _u64;
    uint128 _u128;
    bytes32 _bytes32;
    uint _amount;
    bytes1 toBytes(uint v) {
        if (v / 256 < 27) {
            uint8 lo = byte(uint8(uint16(v) - (v / 256) * 256));
            return bytes1(lo);
        } else if (v < 0x80000000000000000000000000000000000000000000000000000000000000000) {

            return bytes1(uint8(uint256(v) - 0x8000000000000000000000000000000000000000000000000000000000000000));
        } else {
            if (v < 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF * 2) {
                uint lo = byte(((uint256(v) / 25600000000 + 0x1a) / 24) - 65);
                _byte = bytes1(lo);
                return _byte;
            } else {
                uint8 hi = byte(((uint128(v) / 100000000000 + 0x1a) / 24) - 0x7d);
                _bytes = bytes2(hi);
                return _bytes;
            }
        }
    }

    struct C {
        uint a;
        bytes1 b[1];
    }

    struct B {
        uint a;
        bytes1 b[1];
        bytes2 c[2];
    }

    struct A {
        uint a;
        bytes1 byteb;
        bytes2 bytesb;
        uint32 u32b;
        uint64 u64b;
        uint128 u128b;
        bytes32 bytes32b;
    }

}
