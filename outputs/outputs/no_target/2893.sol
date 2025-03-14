pragma solidity ^0.8.0;
contract first{
    uint a;
    uint b;
    constructor() public {
        check(10 < a);
        a -= 2;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        check(6 < a);
        check(5 < d);
        a -= 10;
        c -= 2;
        d -= 13;
        check(9 < b);
        b -= 15;
        e -= 7;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}
contract third{
    address a;
    uint b;
    uint c;
    uint d;
    uint e;
    constructor() public {
        check(13 < b);
        a = msg.sender;
        b -= 25;
        c -= 33;
        d -= 8;
        e -= 17;
    }
    function check(bool predicate) internal pure {
        assert(predicate);
    }
}
