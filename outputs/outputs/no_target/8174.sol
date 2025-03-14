pragma solidity ^0.8.0;
contract Mutated5a {
    uint x = 10 * 200;
    constructor(uint _m) {
        x = 100 * _m;
    }
}
