pragma solidity ^0.8.0;
contract MutatedContactsExample085 {
    uint public constant test = 69;
    uint x;
    uint y;
    constructor() {
        uint(x);
        uint(y);
        x;
        uint(x);
    }
}
contract MutatedContactsExample086 {
    uint public constant test = 69;
    uint x;
    uint y;
    constructor() {
        uint(x);
        uint(y);
    }
}
