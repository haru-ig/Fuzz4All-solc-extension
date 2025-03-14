pragma solidity ^0.8.0;
contract Incrementer {
    uint i;
    modifier onlyIncrement {
        i = Incrementer.increment_internal();
        _;
    }
    constructor() {
        i += 1;
    }
}
