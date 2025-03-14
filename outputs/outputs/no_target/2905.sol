pragma solidity ^0.8.0;
contract first{
    uint a;
    uint b;
    constructor() public {
        a -= 2;
        assert(10 < a);
    }
}
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        c -= 2;
        assert(9 < c);
        d -= 10;
        e -= 7;
    }
}
contract third{
    address a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        b -= 13;
        check(8 < a);
        a = msg.sender;
        check(7 < a);
        b -= 25;
        c -= 33;
        d -= 8;
        e -= 17;
        check(10 < e);
    }
}
