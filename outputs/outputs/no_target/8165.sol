pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 5;
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated2b {
    uint x = uint64(5) + uint64(10);
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated3b {
    uint x = uint96(5) + uint96(10);
    constructor(uint m) {
        x = 100 * m;
    }
}
