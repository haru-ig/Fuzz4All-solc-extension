pragma solidity ^0.8.0;
contract T8FS_mutator1 {
    uint16 i;
    uint16 c1;
    uint16 c5;
    uint16 c9;
    uint16 c11;
    uint16 c15;
    uint16 c20;
    uint16 c24;
    uint16 c28;
    uint16 c32;
    uint16 c36;
    uint16 c40;
    uint16 c46;
    uint16 c52;
    uint16 c57;
    uint16 c63;
    uint16 c68;
    uint16 c75;
    uint16 c81;
}

contract T8FS_v {
    uint16 f1;
    uint16 f4;
    uint16 f7;
    uint16 f9;
    uint16 f11;
    uint16 f14;
    uint16 f17;
    uint16 f21;

    function f() internal pure {
        T8FS_mutator memory t8FS = T8FS_mutator(1);
        T8FS_mutator1 memory t8FS1 = T8FS_mutator1(1, 1, 1, 1);
        T8FS_mutator1 memory t8FS11 = T8FS_mutator1(11, 15, 2, 5);
        i = t8FS.f4 + t8FS1.f11 + t8FS11.f3;
        c1 = t8FS.f6 + t8FS1.f7 + t8FS11.f13;
        c5 = t8FS.f9 + t8FS1.f10 + t8FS11.f15;
        c9 = t8FS.f11 + t8FS1.f12 + t8FS11.f17;
        c11 = t
