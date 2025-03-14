pragma solidity ^0.8.0;
contract C {
    uint public z = 0;
    uint public x;
    constructor() public {
        x = 3;
        x = x / 2;
        x = x * 4;
    }
    function test() public {
        C c = new C();
        C o = new C();
        test();
        x = x / 2;
        x = x * 4;
        o.x = 2;
        o.x = o.x / 2;
        c.x = 2;
        c.x = c.x / 2;
        c.x = c.x * 4;
        x = x / 2;
        x = x * 4;
        o.x = 2;
        o.x = o.x / 2;
        c.x = 2;
        c.x = c.x / 2;
        c.x = c.x * 4;
        o.x = 2;
        o.x = o.x / 2;
        o.x = o.x * 4;
        x = x / 2;
        x = x * 4;
    }
}
