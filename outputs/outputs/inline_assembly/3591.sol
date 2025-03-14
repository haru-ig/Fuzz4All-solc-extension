pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics{
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    uint public g;
    constructor() {
        a = address(3);
        g = 1;
        e = address(0x103);
        e = address(3);
        d = address(3);
        b = address(3);
        d = a;
        b = a;
        d = b;
        g = g;
        b = b;
        d = d;
        c = c;
    }
    function squash()
        public {
        a = b;
        g = c;
        g = d;
        b = d;
        e = e;
        a = e;
    }
}
