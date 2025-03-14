pragma solidity ^0.8.0;
contract Mutated6d {
    int128 x = 120;
    constructor() {
        x = x * 2;
        x = x / x;
    }
}
