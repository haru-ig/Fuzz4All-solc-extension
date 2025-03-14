pragma solidity ^0.8.0;
contract Semantic0050 {
    struct A {
        bool a1;
    }
    function same0(bool a1, A x, A z) public pure {
        bool a_a1;
        a_a1 = x.a1;
        a1 = a1 || a_a1;
        bool _a1;
        _a1 = _a1 && a1;
        a1 = _a1 || a_a1;
        bool x2;
        x2 = false;
        x2 = false;
        if (false == a_a1) {
            a_a1 = false;
        }
        a1 = _a1 && a_a1;
        a1 = true || _a1;
        bool x3;
        x3 = false;
        x3 = false;
    }
    function same(bool a1, A x, A z) public pure {
        bool _a1;
        bool a1x;
        _a1 = a1 || true;
        bool x2;
        x2 = false;
        a1x = a1;
        _a1 = _a1 && true;
        bool x3;
        x3 = false;
        a1x = a1 || true;
        a1x = a1 || true;
        a1x = a1 && false;
        bool x4;
        x4 = false;
        bool _a1b;
        _a1b = false || true;
        _a1b = _a1b || false;
        a1 = _a1 ^ _a1b;
        a1x = a1 ^ true;
        bool _a1a;
        _a1a = true && false;
        _a1a = _a1a || true;
        bool x5;
        x5 = false;
    }
}

contract Semantic0051 {
    function same_empty() public pure{
        bool a1;
        bool a2;
        bool a3;
        bool a4;
        bool a5;
        bool a6;
        bool a7;
        bool a8;
        bool a9;
        bool a10;
        bool a11;
        bool a12;
        bool a13;
        bool a14;
        bool a15;
        bool a16;
        bool a17;
        bool a18;
        bool a19;
        bool a20;
        bool a21;
        bool a22;
        bool a23;
        bool a24;
        bool a25;
        bool a26;
        bool a27;
        bool a28;
        bool a29;
        bool a30;
        bool a31
