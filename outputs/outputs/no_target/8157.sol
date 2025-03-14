pragma solidity ^0.8.0;
contract Mutated1a {
    uint x = 100 * 20;
    constructor (uint m) {
        x -= m;
    }
}
contract Mutated1b {
    uint x = 10 * 100 * 20;
    constructor(uint m) {
        x -= m;
    }
}
contract Mutated2a {
    uint x = 3 * (uint(255) + (uint(65025) - 1023) / uint(1024));
    constructor (uint m) {
        x -= m;
    }
}
contract Mutated4a {
    uint x = 10 + ((uint(100) > 99) + 1);
    constructor (uint m) {
        x -= m;
    }
}
