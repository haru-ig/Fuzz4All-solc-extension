pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = uint160(22) + 20;
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated2b {
    uint x =  (uint160(32) + 100);
    constructor(uint m) {
        x = 100 * m;
    }
}
contract Mutated3b {
    uint x = uint160(0);
    constructor(uint m) {
        x = 100 * m;
    }
}
