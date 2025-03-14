pragma solidity ^0.8.0;
contract B {
    using A for A.x;
    A a;
    A.x z;
    A.x p;
    uint x;
    uint z;
    uint s;
    uint a;
    constructor () {
        a = 13;
        z = 46;
        s = 71;
        p = 59;
        x = 0;
        z = 0;
    }
    function f() public onlyOwner {
        a += p + z + s;
        p = 28;
        a += z - s;
        p = 64;
        x += z + s;
        x += a + a;
    }
}

contract C {
    using A for A.x;
    A a;
    uint x;
    uint z;
    uint s;
    uint a;
    constructor () {
        a = 13;
        z = 46;
        s = 71;
        x += z + s;
        z = 56;
        z = 0;
    }
    function g() public view onlyOwner {
        a = 36;
        s = 80;
        a += x - z;
        p = 54;
        c = 58;
        x += z - s;
        x = 66;
        x -= z;
    }
}
