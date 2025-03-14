pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;

    function f() public pure returns (uint x) {
        uint _tmp0 = initialx + (0xADECAFDEADBEEF12 - 0x01234 + initialy);
        uint _tmp1 = initialy + 0xFCBADFDEADBEEF12;
        uint _tmp2 = initialy + (f() + 0x01234ADECAFDEAD);
        uint _tmp3 = initialy + (0xDECAFDEADBEEF12 + (f() + 0xAF36EF + (initialx - 0x01234) + (f() + 0x354E35 + (initialy + (0x35356BEF35EF - 0xEF123456789ACDEF) + 0x3535EBEF35EF + initialy + (f() + (initialy + _tmp1) - (initialx + 0x01234)))))) + 0x354E35356BEF35EF);
        return _tmp0 + f() + 0xAF36EF + _tmp2 + _tmp3;
    }
}
