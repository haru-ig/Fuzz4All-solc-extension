pragma solidity ^0.8.0;
contract NewSolidity {
    uint128[2] x = [0x200, 0x201];
    uint128 x1 = x[1];
    uint128[2] memory y = uint128[2](x);
    uint128 memory z = 0x201;
    uint128 const n = 0x200;
    uint128 x2 = x1;
    uint127[10] memory y2 = uint127[10](uint128[2]([x2, 0x200]));
    uint127 memory x3 = x2;
}
