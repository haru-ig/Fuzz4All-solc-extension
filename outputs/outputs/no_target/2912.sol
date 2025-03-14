pragma solidity ^0.8.0;
contract first{
    uint a;
    uint b;

    function first() public {
        a += 2;
        b -= 5;
    }
}
contract second{
    uint a;
    uint b;
    uint c;
    uint d;
    uint e;

    function second() public {
        b += 6;
        a += 8;
        c = b + 8;
        d += 2;
        e -= 3;
    }
}
