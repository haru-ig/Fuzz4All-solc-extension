pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYul {
    using SoliditySemanticsGas for uint;
    uint public r;
    uint public g;

    constructor() {
        r = 1;
        a = b;
        g = 2;
        a = c;
        a = d;
        a = c;
        d = a;
        a = b;
        b = c;
        b = e;
        g = 3;
        c = b;
        r = r + 1;
        r = r;
        d = b;
    }
}
