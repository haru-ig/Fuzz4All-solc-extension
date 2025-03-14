pragma solidity ^0.8.0;
contract Mutated1b is Mutated1a {
    uint x = 0;
    constructor(uint m) Mutated1a(m) {}
}
contract Mutated2b is Mutated2a {
    uint x = 0;
    constructor(uint m) Mutated2a(m) {}
}
contract Mutated3b is Mutated3a {
    uint x = 0;
    constructor(uint m) Mutated3a(m) {}
}
