pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = 7-a;
        uint c = (int256) a + (bytes4(uint(15))) (0x3f);
        c = (int256) a + (bytes4(uint(a))) (0x3f);
        uint d = a + (bytes4(uint(15))) (0x3f);
        uint e = a + (bytes4(uint(12))) (0x3f);
        b = uint(a) + c;
        uint f = a + b;
        b = uint(d) + e;
        d = 0x3f.add(d);
        e = d.div(2);
        d = uint(12).mul(e);
        b = uint(0x3f) + (bytes4(uint(0x7f))) (0x3f);
        b = uint(0x80) + (bytes4(uint(-0x7f))) (0x3f);
        c = uint(e) + (bytes4(uint(0x7f))) (0x3f);
        uint f = uint(12) % (uint(14));
        b = uint(d) + (bytes4(uint(-0x90))) (0x3f);
        b = uint(e) + (bytes4(uint(0x7f))) (0x3f);
        b = (int256) d / ((bytes4(uint(92)))) ((0x10001));
        c = (int256) (d % ((bytes4(uint(91)))) ((0x10001)));
        d = (int256) (c / ((bytes4(uint(92)))) ((0x10001)));
        e = (int256) (c % ((bytes4(uint(91)))) ((0x10001)));
        b = (int256) b - (bytes4(uint(-65))) (0x3f);
        b = b - int256 (0x7f) - (bytes4(uint(0x1))) (0x3f);
        d = (int256) (4 / ((bytes4(uint(-54)))) ((0x10001)));
        e = (int256) (4 % ((bytes4(uint(80)))) ((0x10001));
        b = (int256) (1 + (bytes4(uint(-70)))) (0x3f);
        d
