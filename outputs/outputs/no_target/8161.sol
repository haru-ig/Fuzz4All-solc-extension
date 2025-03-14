pragma solidity ^0.8.0;
contract Mutated1a {
    uint x = 10;
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated2a {
    uint x = uint32(10) + uint32(10);
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated3a {
    uint x = uint160(10) + uint160(50);
    constructor(uint m) {
        x = 100 * m;
    }
}
