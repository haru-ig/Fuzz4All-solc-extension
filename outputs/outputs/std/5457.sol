pragma solidity ^0.8.0;
contract Mutate13 {
    uint256 constant ZERO = 0;
    uint256 constant ONE = 1;
    uint256 constant TWO = 2;

    struct Data {
        uint256 val;
        Address ptr;
    }
    mapping (Address => Data) m;

    Address ptr;
    constructor() {
        m[address(this)] = Data(TWO, ptr);
    }
}
