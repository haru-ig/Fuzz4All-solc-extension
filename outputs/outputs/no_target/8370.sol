pragma solidity ^0.8.0;
contract Unsafe2 {
    address a;
    bool b;
    constructor() public {
        a = address(4);
        b = true;
    }
    function f() public {
        unchecked {
            a = address(0);
        }
    }
    function g() public {
        b = false;
        unchecked {
        }
    }
}

pragma solidity ^0.8.0;
contract Unsafe4 {
    address a;
    uint256 b;
    bool c;
    bytes16 d;
    uint128 e;
    uint uint16;
    uint64 uInt64;
    uint256 _uint256_max;
    uint32 _uint32_max;
    uint64 _uint256_max64;
    uint32 _uint32_max32;
    uint _uint_max;
    address _address_min;
    bytes8 _bytes8_max;
    bytes _bytes_max;
    bytes _bytes_min;
    bytes16 _bytes16_max;
    bytes _bytes_min;
    bytes16 _bytes16_min;
    address _address_max;
    uint _uint_max2;
    uint _uint_max3;
    uint256 _uint_min;
    uint _uint_max4;
    uint _uint_max5;
    bytes _bytes1_max;
    uint _uint_min2;
    uint _uint_min3;
    uint256 _uint_max6;
    uint _uint16_min;
    uint256 _uint_max7;
    uint _uint_min5;
    uint _uint16_max;
    uint256 uint64_min;
    uint _uint256_max8;
    uint _uint_max9;
}
contract Unsafe2 {
    bool _b2;
    uint256 _uint_min3;
    function h() public {
        uint i = 3;
        while (b) i++;
    }
    function h2() public constant {
        uint i2 = i;
        assert(i == i2);
        return i2;
    }
    function h3() public {
        uint256 i3 = 3;
        uint i1 = i3;
        i3 = 4;
    }
    function h4() public {
        uint256 i3 = 2 * (uint256) 2 + 1;
        uint i1 = i3;
        uint256 i2 = 100;
        uint i4 = i3 * 8 * 0xffffffffffffffffffffffffffff;
        uint i5 = i3 * 2;
    }
