pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public pure returns (uint x) {
        x = 0xADECAFDEADBEEF12;
        x = 0xBC1A1B02435E3435;
        x = 0x354E35356BEF35EF;
        x = initialx + x - 0x01234;
        x = initialy + (uint)f() - x;
        x = initialy + (x - 0xEF123456789ACD1F);
        x = initialy + (uint)f() + x;
        x = initialy + (x - 0xDECAFDEADBEEF12) + x;
        x = initialy + (x - 0xD1D3CA39313D613D) + 0xAF36EF + x;
        return x + 0x354E35 + x;
    }
    constructor() {
        f();
    }
}
