pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0;
    uint constant initialy = 0xcad3bf354845a47d;
    function f() public pure returns (uint) {
        uint _tmp1 = 0xADECAFDEADBEEF12;
        uint _tmp2 = 0xCAD388C076C57BF3;
        uint _tmp3 = 0x354E35356BEF35EF;
        uint _tmp4 = initialx + f() - _tmp2;
        uint _tmp5 = initialy + f() - _tmp1;
        uint _tmp6 = initialx + 0xEF123456789ACDEF;
        uint _tmp7 = initialy + 0xDDEFFA3A47E6E66F;
        uint _tmp8 = initialx + 0xEF1234 + f() + _tmp2 + initialy + 0xEF123401234ADECA + _tmp1 + 0xFADBEE;
        uint _tmp9 = initialy + _tmp6 + initialy + 0xEF1234 + f() + _tmp3 + 0xEF1234EF;
        return _tmp2 + _tmp9;
    }
}
