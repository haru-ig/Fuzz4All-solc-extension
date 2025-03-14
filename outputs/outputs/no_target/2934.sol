pragma solidity ^0.8.0;
contract third3 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = a << 10;
        a >>= 1;
        b >>= 10;
    }
}
contract fourth3 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = c << c;
    }
}
contract second5 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = byte(0);
        uint j = 8;
        a = byte(0);
        a = int8(0);
        a = uint8(0);
        a = uint0(0);
        a = bytes1(0);
        a = bytes(0);
        a = bytes3(0);
        a = bytes_3(0);
        a = bytes_10(0);
        b = b << int256(8);
    }
}
contract second4 {
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        uint i = a << 10;
        uint j = a >> a >> a;
        uint k = a >> 0;
    }
}
