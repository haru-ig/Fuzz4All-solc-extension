pragma solidity ^0.8.0;
contract first{
    uint8 a;
    uint8 b;
    constructor() public {
        a -= 6;
        a %= 2;
        a %= 10;
        b -= 4;
    }
}
contract second{
    uint8 a;
    uint8 b;
    uint8 c;
    uint b;
    uint c;
    constructor() public {
        b -= 40;
        c -= 24;
        a %= 18;
        b %= 2;
        a -= 10;
        a %= 9;
        b %= 7;
        b -= 9;
        a -= 17;
        a %= 10;
        b = 1;
        c %= 13;
        c -= 31;
    }
}
