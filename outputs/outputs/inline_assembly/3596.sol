pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYul{
    address public a;
    address public b;
    address public c;
    uint public r;
    uint public d;
    uint public g;
    constructor() {
        d = address(a);
        r = 1;
        g = g + 1;
        uint i;
        uint k;
        for(k = 0 ; k < 20000000 ; k++) {
            i = g;
            g = r;
            r = r + i;
            r = 20001 + k;

        }
        r = 20001 + k;
        d = a;
        a = address(b);
        a = address(d);
        b = address(3);
        a = c;
        b = e;
        d = b;
    }
}
