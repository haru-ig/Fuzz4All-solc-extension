pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = ((uint160(2) * 1 + 20) * 2);
    constructor (uint m) {
        uint result = (uint){x >> x << x} << 1 << 16;
        x += m;
        x += result;
    }
}
contract Mutated2b {
    uint x = (32 * uint(100));
    constructor(uint m) {
        uint result = uint (uint160(2) * 1 + 20) * uint(100);
        x += m;
        x += result;
    }
}
contract Mutated3b {
    uint x = 15 + uint(100);
    constructor(uint m) {
        uint result = uint(uint160(2) * 1 + 20) * uint(100);
        x += m;
        x += result;
    }
}

pragma solidity ^0.8.0;
contract Mutated1c {
    uint x = uint(100) - 3;
    uint y = -8;
    constructor (uint m) {
        uint result = -(3 - uint160(2));
        x += m;
        y += m;
        x += uint160(y) - result;
    }
}
contract Mutated2c {
    uint x = uint(1 << (uint160(uint(2))) + 1);
    uint y = uint(1 + 2);
    constructor(uint m) {
        uint result = uint(uint160(2) + uint160(1)) + uint(uint160(1 << 3) - 1);
        x += m;
        y += m;
        x += uint160(y) - result;
    }
}
contract Mutated3c {
    uint x = -512 + 10 + -3;
    constructor(uint m) {
        uint result = -(3 - uint160(2));
        x += m;
        y += m;
        x += uint(uint160(y) - result);
    }
}

pragma solidity ^0.8.0;
contract Mutated1d {
    uint constant y = uint160(100);
    uint z = uint160(1) * y;
