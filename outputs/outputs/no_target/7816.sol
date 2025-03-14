pragma solidity ^0.8.0;
contract Test {
    bytes5 public a;
    address public b;
    uint public c;
    bytes public d;
    bytes4 public e;
    bytes5 public f;
    bytes6 public g;
    bytes10 public h;
    bytes20 public i;
    uint public j;
    uint64 public k;
    uint128 public l;
    address public m;
    bool public n;
    uint8 public o;
    uint arraySize = 6;
    bool public[arraySize] public b1;
    address[](arraySize) public aaa;
    bytes111 public bb;
    uint256[4] public x;
    struct TestStruct {
        uint8 d1;
        uint8 d2;
        uint8 d3;
        uint8 d4;
        uint16 v;
        uint16 w;
    }
    uint8[16] public z;
    TestStruct public structTest;
    address[] public aaa6;
    uint[] public zs;
    bytes88 public kkk;
    bool public zz = true;
    constructor(
        address _a
    ) public {
        a = bytes5(TestLib.log3.selector);
        b = address(0x93A8616A7a1BF5D545A1C7fD6310C14Ab840950B);
        c = 0x1;
        d = "Hello";
        e = bytes4(0xcccccc);
        f = bytes5(9);
        g = "World";
        h = "bytes5: 0x90";
        i = "bytes20(0xa000000000000000000000000000000000000000000000000000000000000000)";
        j = 0x7fffffffffffff;
        k = 0xfffffffffff;
        l = 0xffffffffffffff;
        m = address(0x10);
        n = true;
        o = 0x1;
        for(uint256 i = 0; i < arraySize; ++i) {
            b1[i] = true;
        }
        aaa = [address(0xa), address(0xd), address(0xb)];
        bb = "3";
        x[0] = 0x2000000000000000000000000000000;
