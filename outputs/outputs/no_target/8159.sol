pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 10 * 20;
    constructor (uint m) {
        x += m;
    }
}
contract Mutated2b {
    uint x = 10 * 20;
    constructor (uint m) {
        x += m;
    }
}
contract Mutated3b {
    uint x = -5 + 9;
    constructor (uint m) {
        x += m;
    }
}

pragma solidity ^0.8.0;
contract LongProgramA {
    uint x;
    function run(bool b) {
        if(!b) {
            x = -1;
        }
        if(!b) {
            x *= (uint x + (uint160(10)) / (10 + (uint160(100))));
        }
        if(!b) {
            x -= 2;
            x += (uint x - 1) / (uint x - 3);
        }
        if(!b) {
            x -= (uint160 x ^ 10000000000000);
            x += (uint x + 3) / (uint x - 2);
            x -= 6;
            x += (uint160 x + (100000000000 + 5) / (100000000000 + x - 5));
            x -= (100000000000 + 35) / (x + (uint x ^ 10));
        }
        if(!b) {
            x += (uint160 x - 100) / (uint(x) + 42);
            x += (uint160 x + 192) / (uint x + 1);
            x += (100 - 216 - 1) / (uint x  / (x / (x + 7)));
        }
        if(!b) {
            x += uint (10 & (uint160 ((uint16 0) / (uint16 1))));
            x += (uint x ^ 100) / (10 + (uint160 x ^ 100)) / (3 + x + (uint160 x ^ 1000000000000) + (x * (uint uint160 (-1
