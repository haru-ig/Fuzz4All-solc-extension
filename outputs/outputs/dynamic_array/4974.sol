pragma solidity ^0.8.0;
contract Test68e {
    uint storage x0;
    uint x1;
    uint x2;

    struct A {
        uint8 y;
    }

    modifier x3(uint8 y) {
        x0;
        x1;
        x2;
        A memory a;
        a.y = y;
        a.y;
        return;
    }

    A memory a;
    constructor() public {
        x0;
        x1;
        x2;
        x3(0);
        a.y;
    }
}
