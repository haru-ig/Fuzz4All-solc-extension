pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 20;
    constructor(mut uint m) {
        x += m;
    }
}
contract Mutated2b {
    uint x = uint160(10);
    constructor (mut uint m) {
        x += m;
    }
}
contract Mutated3b {
    uint x = 0;
    constructor (mut uint m) {
        x += m;
    }
}

pragma solidity ^0.8.0;
contract Mutated1c {
    uint x = 20;
    constructor(uint m1, uint m2) {
        x += m1 + m2;
    }
}
contract Mutated2c {
    uint x = uint160(10);
    constructor (uint m1, uint m2) {
        x += m1 + m2;
    }
}
contract Mutated3c {
    uint x = 0;
    constructor (uint m1, uint m2) {
        x += m1 + m2;
    }
}
