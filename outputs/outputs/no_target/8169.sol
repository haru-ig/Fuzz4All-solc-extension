pragma solidity ^0.8.0;
contract Mutated4a {
    uint x = 10 * (uint160(200) * uint160(200));
    constructor(uint m) {
        x = 100 * m;
    }
}
