pragma solidity ^0.8.0;
contract L {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    modifier g2(uint x) {
        uint _tmp1 = 0x0123AEF12DECAFFE;
        uint _tmp2 = 0xDECAFDEADBEEF1234;
        uint _tmp3 = initialy + _tmp1;
        uint _tmp4 = initialy + _tmp2;
        uint _tmp5 = initialx + f() - _tmp3;
        uint _tmp6 = initialy + f() + 0xAEF12;
        uint _tmp7 = initaly + 0x01234ADECAFDEAD;
        uint _tmp8 = initialy + 0xAEF12DECAFF + _tmp7;
        uint _tmp9 = initialy + 0xDEADBEEF12ADECA + _tmp4;
        uint _tmp10 = initialy + 0xDEADBEEF8CADEF1 + _tmp4 + _tmp6;
        uint _tmp11 = initialy + f() + 0xDEADBEE + _tmp3 + _tmp8 + _tmp4 + 0xACEFADECAF;
        return _tmp3 + x + _tmp5 + _tmp2 + _tmp10 + _tmp9 + _tmp11;
    }
    function f() public pure returns (uint x) {
        uint _tmp1 = 0xDECAFDEADBEEF12;
        uint _tmp2 = 0x0123
