pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 1 * 20;
    constructor (uint m) {
        x *= m + 9;
    }
}
contract Mutated2b {
    uint x = (uint[(2+1)][30]((10,20)).x();
    constructor(uint m) {
        x *= m * 100;
    }
}
contract Mutated3b {
    uint x = -5 / 9;
    constructor(uint m) {
        x *= m * 100;
    }
}
