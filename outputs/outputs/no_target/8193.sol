pragma solidity ^0.8.0;
contract Mutated5d {
    int128 x = 120;
    constructor() {
        x = x < int128(1234567890123)
              ? x
               : int128(1234567890123);
    }
}
