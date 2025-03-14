pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 0;
    constructor (uint m) {
        x = unchecked(x + m);
    }
}
contract Mutated2b {
    uint x = uint160(0);
    constructor (uint m) {
        x = unchecked(x + m);
    }
}
contract Mutated3b {
    uint x = 1;
    constructor (uint m) {
        x = unchecked(x + m);
    }
}
contract Mutated4b {
    uint x = uint160(uint160(1));
    constructor () {
        x = unchecked(x + uint160(1));
    }
}
