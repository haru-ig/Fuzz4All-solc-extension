pragma solidity ^0.8.0;
contract MutatedSquashGenerationsFromYulWithSemantics{
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    uint public g;
    uint public r;
    constructor() {
        d = address(a);
        r = 1;
        g = 1;
        d = a;
        a = address(b);
        a = address(c);
        b = address(3);
        a = c;
        c = b;
        b = address(3);
        a = address(3);
        b = address(c);
        b = address(3);
        a = c;
        b = address(3);
        b = address(3);
        a = c;
        b = address(3);
        b = address(3);
        c = c;
        b = address(3);
        a = c;
        a = c;
        b = address(3);
    }
}
