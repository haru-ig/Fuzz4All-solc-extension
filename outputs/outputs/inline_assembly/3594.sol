pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics{
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
        d = a;

        a = address(b);

        a = address(c);
        b = address(3);
        a = c;

        b = e;
        g = 1;
        c = b;
        r = r + 1;
        r = r;
        d = b;
    }
}
