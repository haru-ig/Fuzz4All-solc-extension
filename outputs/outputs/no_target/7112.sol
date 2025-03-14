pragma solidity ^0.8.0;
contract Test {
    bool public b;

    constructor(bool a) public {
        b = a;
    }

    constructor(bool a, bool b) public {
        b = a || b;
    }
}
