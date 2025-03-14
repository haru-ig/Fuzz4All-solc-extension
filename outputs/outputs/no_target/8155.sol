pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = uint160(10) + 20;
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated2b {
    uint x = (uint160(30) + 100);
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated3b {
    uint x = uint160(5) + 50;
    constructor(uint m) {
        x = 100 * m;
    }
}
