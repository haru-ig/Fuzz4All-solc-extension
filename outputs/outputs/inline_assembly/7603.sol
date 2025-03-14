pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public pure returns (uint x) {
        x = uint(initialx) + uint(_tmp2)-uint(0x01234);
        x = uint(initialy) + uint(f()) + uint(0x01234ADECAFDEAD);
        x = uint(initialy) + uint(_tmp7);
        x = uint(initialy) + uint(0xDECAFDEADBEEF12) + uint(_tmp8);
        return uint(_tmp3) + uint(f()) + uint(0xAF36EF) + uint(_tmp5) + uint(_tmp4) + uint(0x354E35) + uint(0x354E35) + uint(0xCAF27F);
    }
}
