pragma solidity ^0.8.0;
contract MutatedContactsExample03 {
    uint public constant test = 69;
    uint x;
    uint y;
    constructor() {
        uint(x);
    }
}
contract MutatedContactsExample04 {
    uint public constant test = 69;
    uint x;
    uint y;
    constructor() {
        uint(x);
    }
}
contract MutatedContactsExample047 {
    uint public constant test = 69;
    uint x;
    uint y;
    constructor() {
        string(y);
        string(x);
    }
}
