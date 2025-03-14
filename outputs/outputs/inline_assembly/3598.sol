pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    uint public g;
    uint public r;
    constructor() {
        c = address(a);
        d = address(b);
        a = address(c);
        b = a;
        d = address(1);
        d.transfer(a);
        e = b;
        c.transfer(a);
        a = b;
        c = address(1);
        d.transfer(e);
        a = e;
    }
}
