pragma solidity ^0.8.0;
contract emulator94 {
    uint z = 1;
    uint a = 2;
    function test1() public pure returns(uint, uint) { z = 1 + (z * 701); a = 14 * z; }
    function test2() internal pure returns(uint, uint) { for (uint i = 0; i < 10000; i ++) { z = 32 + (z * 701); a = 2 * (z * z); }
    for (uint i = 0; i < 10000; i ++) { z = 3 * z; a = 32 * (z * 701); } } }
