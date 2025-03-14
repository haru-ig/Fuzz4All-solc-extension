pragma solidity ^0.8.0;
contract Mutated5c {
    bytes1 x = 0xf1;
    constructor() {
        x = x > bytes1(0xf3)? x : bytes1(0xf3);
    }
}
