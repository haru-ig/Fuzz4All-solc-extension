pragma solidity ^0.8.0;
contract C {
    struct S {
        int32[11] a;
    }
    S s;
    constructor() public {
        s.a[0] = -1;
        s.a[1] = -2;
        s.a[2] = -3;
        s.a[3] = -4;
        s.a[4] = -5;
        s.a[5] = -6;
        s.a[6] = -7;
        s.a[7] = -8;
        s.a[8] = -9;
        s.a[9] = -10;
        s.a[10] = -11;
    }
}

pragma solidity ^0.8.0;
contract Bugs {
    struct SS {
        uint x;
        uint y;
        uint[2] z;
        uint[3] u32ss;
        uint[5][2] u52ss;
        uint[3][3] aaa;
        uint[7][3] a;
        uint[8][3] s;
        uint[9][3][67] s38;
    }
    SS u;
    constructor() public {
        u = SS(12, 23, [44, 55, 66], [4, 56, 78, 90], [10, 20, 30, 40],
        [1, 21, 31]);
    }
}

pragma solidity ^0.8.0;
contract Bug_9311 {

    uint[] public s;
    uint s_len;
    constructor() public {
        s_len = 2 ** 26;
    }

    function f() public {
        uint[11] memory array;
        for (uint i = 0; i < s_len; i++) {
            array[i] = 0;
        }
        s = array;
    }
