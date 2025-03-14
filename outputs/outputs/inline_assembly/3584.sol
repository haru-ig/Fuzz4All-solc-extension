pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    constructor() {
        a = address(3);
        e = address(0x103);
        e = address(3);
        d = address(3);
        b = address(3);
        a = a;
        b = b;
        d = d;
        c = c;
    }
}
