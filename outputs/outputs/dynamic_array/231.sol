pragma solidity ^0.8.0;
contract C7 {
    struct T { uint256 s; }
    constructor(uint256 x) {}
    function mutate(T storage x) public {
        uint256 s;
        (s, x.s) = (s+x.s, s-x.s);
    }
}

library StaticCalldataArrayFix {
    struct T { uint256 a; uint256 b; }
    function f() public {
        T memory t0 = T(_a + _b, _b + _c);
        (T memory t; _calldata, t.b) = (t0, _c + _b);
        (t, _d) = (t0, _c);
    }
    function g() public {
        T storage t0 = T(_e + _f[_c], _f[_c]);
        (_a, T memory t) = (T(_e + _f[_c], 1), t0);
        (T storage t; _calldata, t.b) = (t, 1);
        (t, _d) = (t0, _c);
    }
}


contract CodegenLib {

    constructor() {}


    function indexAndData(uint256 i) public pure returns (uint256 x1, uint256 x2, uint256 x3, uint256 i_, uint256 a) {
        x1 = i & 0xFF;
        x2 = uint256(uint8(i >> 8));
        x3 = uint256(uint8(i >> 16));
        i_ = i & ~(uint256(0xFF) | uint256(0xFF00));
        a = this;
    }
}
address S3 = 0x3131F9118290B9B8c7C5e065608B6d9600F4570c;
contract C5{
    address x1;
    address x2;
    constructor(){
        CodegenLib lib = new();
        (x2,x1) = lib.indexAndData(5);
