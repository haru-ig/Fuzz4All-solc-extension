pragma solidity ^0.8.0;
contract emulator10 {
    uint z = 1;
    function test1() public pure returns(uint) { z = 32 - z * 701*0x7fffffff6000 ; }
    function test2() public pure returns(uint) { for (uint i = 0; i < 10000; i ++) { z = 701 - z * 32; }
    for (uint i = 0; i < 10000; i ++) { z = 3 * z; } } }
