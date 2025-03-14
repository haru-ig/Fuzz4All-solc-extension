pragma solidity ^0.8.0;
contract Mutated1a {
    uint x = 10 * 20;
    constructor (uint m) {
        x += m;
    }
}
contract Mutated2a {
    uint x = (uint160(30) * 100);
    constructor(uint m) {
        x += m;
    }
}
contract Mutated3a {
    uint x = -5 + 9;
    constructor(uint m) {
        x += m;
    }
}
