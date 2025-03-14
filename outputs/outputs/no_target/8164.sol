pragma solidity ^0.8.0;
contract Mutated4b {
    uint x = uint160(11) + 0;
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated5b {
    uint x = uint160(100);
    uint8 y = 1;
    constructor(uint m) {
        x = 100 * m;
        y = 1;
    }
 }
contract Mutated6b {
    uint x = uint160(1) - 1;
    uint10 y = 10;
    uint constant z = 100;
    constructor(uint m) {
        x = 100 * m;
        y = 10;
        z = 100;
    }
 }
