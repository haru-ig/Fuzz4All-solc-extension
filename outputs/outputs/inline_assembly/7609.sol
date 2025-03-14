pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 0;
    uint constant initialy = 0xCABCDABA012345678;
    function f() public pure returns (uint x) {
        uint _tmp1 = initialx + initialy - 0x1234;
        uint _tmp2 = initialy + initialx + initialy - 0x2345;
        uint _tmp3 = initialy + initialx + 0x45678;
        uint _tmp4 = initialy + initialx + 0x1234 + initialy - 0xEFDEAD;
        uint _tmp5 = initialy + initialx + initialy + initialx + 0xAF123 + 0xEFDEAD + 0x1234567;
        uint _tmp6 = initialy + 0xFFFF123456789ACD;
        uint _tmp7 = 0x123456789ABCDE12;
        uint _tmp8 = initialy + f() + 0x2345678 + 0x456789ABCDE;
        uint _tmp9 = initialy + initialy + 0x456789ABCDE + 0x1234567;
        uint _tmp10 = initialy + initialy + initialy + initialy + 0xADFDE123456789AD;
        uint _tmp11 = initialy + initialy + initialy + initialy + initialy + 0x234567 + initialy
