pragma solidity ^0.8.0;
contract SemanticAssemblyExample {
    uint public _a;
    uint public _b;
    uint public _c;
    uint public _d;
    address public _e1;
    address public _e2;
    uint public _f1;
    uint public _f2;
    uint public _x1;
    uint public _x2;
    constructor(uint Z1, uint Z2) public {
        _a -= Z1;
        _b -= Z2 - 10;
        _c -= Z1 - 10;
        _d -= Z2 + 555;
        _e1 -= Z1;
        _e2 -= Z2 - 10;
        _f1 -= Z2 + 10;
        _f2 -= Z1 - 10;
        _x1 = 1000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        _x2 = 1000000000000000000000000000000000000000000000000000000000000000000000;
    }
}
