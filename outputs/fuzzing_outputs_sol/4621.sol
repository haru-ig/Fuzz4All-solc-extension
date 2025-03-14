pragma solidity ^0.8.0;
contract SemanticallyEquivalent {
    constructor() {
        b = true;
        b = false;
        b = false;
    }
    bool public b;
}
