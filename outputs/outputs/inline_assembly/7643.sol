pragma solidity ^0.8.0;
contract L2 {
    uint24 constant ZERO = 0x00000000;
    function f() public pure returns (uint24) {
        return ZERO << 16 >> 48 + 0x110000000;
    }
}
contract L3 { function f() public pure returns (uint24) { return ^(0xFFFFFFFF ^ (_ 81249671) * (4294967296)); } }
contract L4 { function f() public pure returns (uint) { return ^(13757508) >> (( 0 - 3016667298) & -1); } }
contract L5 { function f() public pure returns (uint) { return -uint(uint(contract(L1).f()) ^ 0x901E7461130EF6BB128C3F8E155EFA7EC31C1576D60583D8D8C1E9B697E0CC4F3222128C82AE39ED8CE082010F09C010E3E2F654D3B47E90EEC1F42A89D2329B000); } }
contract L1 { function f() public pure virtual returns (uint) { return 0; } }
