pragma solidity ^0.8.0;
contract L3 {
    uint constant initialx = 0x01234501;
    function f() public pure returns (uint y) {
        uint _tmp1 = 0xDEAD12CADECADEAD;
        uint _tmp2 = 0xDEADBEEFDEADBEEF;
        uint _tmp3 = 0xAF3E2C52AFEF1DEE;
        uint _tmp4 = initialx - _tmp1;
        uint _tmp5 = initialx - 0xCAD3BEA63847187B;
        uint _tmp6 = initialx - f();
        uint _tmp7 = initialx - _tmp1 - 0xEFDEDEAD;
        uint _tmp8 = initialx - _tmp2 + 0x1234DEADBEEF12;
        return _tmp1 + _tmp3 + _tmp5 + _tmp6 - _tmp2 + _tmp4 - _tmp7 + _tmp8;
    }
}
