pragma solidity ^0.8.0;
contract Test1865X {
    uint16[7] memory x    = [0x1,0x2,0x3];
    uint[10] memory s_big = [0x9a, 0x85, 0xab, 0xd2, 0xbe, 0xc3, 0xe1, 0xf6];
    uint[10] memory s_big_rev;
    uint memory a;
    function set() public {
        uint[10] memory a_get;
        for (uint i = 0; i < s_big_rev.length; i++) {
            a_get[i] = s_big_rev[i] >> 76;
        }
        a = a_get[9];
    }
}
