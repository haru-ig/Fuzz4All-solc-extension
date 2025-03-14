pragma solidity ^0.8.0;
contract S0  {
    uint16 constant S = 1;
    uint8 [] private A0;

    S0() {
        A0 = new uint8[](S);
        A0[S-1] = 123;
    }

    uint16 constant S1 = 2;
    uint8[] private A1;

    S0() {
        A1 = new uint8[](S);
        A1[S-1] = 123;
    }
    S1() {
        A1 = new uint8[](S);
        A1[S-1] = 123;
    }
    S1 S;
    S0 x;
    S0 f() {
        return x;
    }
}



pragma solidity ^0.8.0;
contract S3 {
    uint16 constant S= 1;
    uint x = 0;
    uint y = 0;
    uint[] private B;

    constructor() public {
        B = new uint[](S);
        B[S - 1] = 1;
    }
}


pragma solidity ^0.8.0;

contract S4 {
    S3 v;

    constructor() {
        v.B = new uint[](v.B.length / 2);
    }
}


pragma solidity ^0.8.0;

contract S5 {
    uint16 constant S= 1;

    S5() {
        uint256 s = 0;
        uint32 s1 = 0;
        uint512 s6 = 0;
    }
    S5() {
        uint256 s = 0;
    }
}
