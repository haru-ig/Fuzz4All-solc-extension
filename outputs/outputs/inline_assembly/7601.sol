pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public pure returns (uint x) {
        uint _tmp1 = 0xADECAFDEADBEEF12;
        uint _tmp2 = 0xBC1A1B02435E3435;
        uint _tmp3 = 0x354E35356BEF35EF;
        uint _tmp4 = initialx + _tmp2;
        uint _tmp5 = initialy + _tmp1;
        uint _tmp6 = initialy + initialx + _tmp5;
        uint _tmp7 = initialy + 0xEF123456789ACDEF;
        uint _tmp8 = initialy + initialx + _tmp6 + _tmp7;
        return f() + _tmp1 + 0xAF36EF + _tmp2 + 0x354E35 + _tmp3 + _tmp8;
    }
}


pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public pure returns (uint) {
        uint _tmp1 = 0
