pragma solidity ^0.8.0;

contract NonComparable {
    uint8 constant value = 1;
    uint8 public notComparable;
    uint8 public value;
    bool internal nonComparable;

    constructor() {
        notComparable = value;
        value = 2;
        nonComparable = true;
    }
}
