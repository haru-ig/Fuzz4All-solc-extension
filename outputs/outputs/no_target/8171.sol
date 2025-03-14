pragma solidity ^0.8.0;
contract Mutated4b {
    uint x = uint160(200) * (uint160(200) * 10);
    constructor(uint m) {
        x = uint160(200) * m;
    }
}
