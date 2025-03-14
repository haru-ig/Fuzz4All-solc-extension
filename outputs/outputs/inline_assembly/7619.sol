pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0;
    uint constant initialy = 0xcad3bf354845a47d;
    function f() public pure returns (uint x) {
        uint _tmp1 = 0xADECAFDEADBEEF12;
        uint _tmp2 = 0xCAD388C076C57BF3;
        uint _tmp3 = 0x354E35356BEF35EF;
        uint _tmp4 = initialx + _tmp1 - 0x01234;
        uint _tmp5 = initialy + f() - _tmp2;
        uint _tmp6 = initialy + 0xEF123456789ACDEF;
        uint _tmp7 = initialy + f() + 0x01234ADECAFDEAD;
        uint _tmp8 = initialy + 0xDECAFDEADBEEF12 + _tmp7;
        return _tmp2 + f() + 0xAF36EF + _tmp5 + 0x354E35 + _tmp4 + _tmp8;
    }
}
