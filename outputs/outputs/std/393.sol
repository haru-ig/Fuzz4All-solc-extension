pragma solidity ^0.8.0;
contract CreateTest {

    constructor(uint _x) public {}

    function change() public returns (uint) {
        uint y = 1u;
        uint x = 2u;
        x = 2;
        y = 1u8;
        uint32 x64 = 64u;
        uint64 x65 = 65u;
        x = uint(uint(0) + (uint(0)+34*x+456*x64)+uint65);
        y++;
        y--;
        y = uint(uint(0) + (uint(0)+34*y+456*y65));
        x = 2;
        y = 0x3879975bd9ba429324e13a4114db27dc18312f9e + x;
        uint32 x120 = 120;
        y += uint32(0);
        y = uint(uint(1) + (uint(0)+uint(120)+uint32(0)+uint64(0)+152000000000)));
        y ^= uint32(3e118);
        x65 = x120;
        x120 = x65;
        x = uint(uint(0)  + ((uint(1) + x64) + (uint64(0)+uint32(0)+uint64(0)+5971000000000000000000000))));
        y = uint(uint(0) + (uint64(0)+0x7671ed5b88c52829469ba351146fd1a64e61e545036a1)));
        y15 = x;
        if (x == x120) {y = uint(uint32(0xff) + (y + uint8(15)));}
        if (y == x65) {x65 = x65 + uint64(1);}
        if (y == x120) {y = (y + uint(0x80000000000000000000000000000000000000000000000000000000000000000)) ^ uint32(8
