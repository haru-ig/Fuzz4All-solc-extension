pragma solidity ^0.8.0;
contract C {
    uint256[] public a;
    uint256 value;
    constructor () {
        a.push(value);
        a.push(value);
        value = value / 2;
    }
}
contract D is B, C {
    constructor () {
        B b = new B();
        D d = new D();
        d.a.push(value);
        d.a.push(value);
        d.a[3] += 25 * value;
        d.a[4] += 20;
        d.a[2] += 10;
        d.a[0] += 8;
        assert(a.length >= 7);
        assert(a[42] == value);
        assert(a[0] == value);
    }
}
