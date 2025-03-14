pragma solidity ^0.8.0;
library Lib {
    uint160 constant public value = 1;
    uint160 public constant b = 2;
    uint160 constant constantMax = 2**128;
    bytes public constant bytes;

    event E();

    function test(uint160 v, uint8 n) public {
    }

    struct Bytes32 {
        bytes8 b64;
        bytes8 b80;
        bytes160 b128;
    }
    method return1(uint160 v, uint8 n1, uint160 v1, uint8 n2, uint256 v2, uint8 n3, uint256 v3, uint8 n4, uint99 v4, uint8 n5) public pure returns (uint256);
    function f(uint8 i) public view returns (uint8);
}
contract CA {
    uint private constant value = constantMin;
    uint public constant b = constantMax;
    uint constant constantMax = constantMax + 2;
    uint constant public constantMin = -constantMax;
    uint256 public constant constantMin256 = uint256(0) - (0x100000000000000000);

    function test() public pure {
        uint256 xMax = uint256(C.min) - (uint256(uint160(min(value, b))) ^ (uint256(uint160(max(value, b))) << 16));
        if (not(xMax < value && value < uint256(C.min))) {
            revert();
        }
    }
}
contract CB {
    struct {
        uint160 a;
        uint256 b;
        uint8 c;
        uint160 d;
        uint256 e;
        uint8 f;
        uint99 g;
        bytes8 h;
    } bytes;
    function test() public pure {
        uint256 x = uint256(bytes.a) + bytes.e + bytes.g + bytes.c;
        uint256 xs = uint256(bytes.a) << 32 + bytes.b + bytes.c;
        uint256 ys = uint256(bytes.a) << 32 | bytes.b | bytes.f;
        uint256 z = uint256(bytes.a) << bytes.h;
        uint256 zs = uint256(bytes.d) << bytes.h;
    }
}
contract cc {
    bool constant trueVar = true;
    bool constant falseVar = false;
    uint constant uintvar = uint(1);
    uint constant uintvar2 = uint(0);
    uint constant uintvar3 =
