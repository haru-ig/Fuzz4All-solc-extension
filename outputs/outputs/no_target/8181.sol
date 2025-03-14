pragma solidity ^0.8.0;
contract Mutated6 {
    pragma solidity >=0.8.0;
    uint x = 10 * 200;
    constructor(uint x) {
        x = x * 100;
    }
}
