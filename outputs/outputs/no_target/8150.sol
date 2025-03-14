pragma solidity ^0.8.0;
contract Mutated1b {
    uint x = 20;
    constructor (uint m) {
        x += m;
    }
}
contract Mutated2b {
    uint x = uint160(-1);
    constructor (uint m) {
        x += m;
    }
}
contract Mutated3b {
    uint x = 0;
    constructor (uint m) {
        x += m;
    }
}

pragma solidity ^0.8.0;
contract Mutated1c{
    uint m = 20;
    uint x = 0;
    constructor(uint y) {
        m /= y;
        x = m - y;
    }
}
contract Mutated2c{
    uint m;
    uint x = 0;
    constructor(uint y) {
        m = m + y;
        x = m * 10 / y - 200 + m / 2 + 50 * m * m / 100 - 6 / (y * m) - (m * m) - 4;
    }
}
contract Mutated3c {
    uint m = 0;
    uint x = 0;
    constructor (uint y) {
        m += y + y;
        x = m * 6 / 10 + (m * m) * 3 / 2 + (y * y) * 3 / 4;
    }
}
contract Mutated4c {
    uint m = 0;
    uint x = 0;
    constructor (uint y) {
        m = 75 / x + 2 * y + 76 / 5 + y / 2 + 3 / m + 75 / x * m + 3 * y + (y * x) / m - 240 + 76 / 2 - 5 * x + (m * m) / 20 - 34 + (y * y + m) * 10 / 4 + 30 / y - 22 / (x * m) + 5 / y - 3 * x * m / 40;
    }
}
contract Mutated5c {
    uint m = 0;
    uint x = 0;
    contructor (uint y) {
        m = y * m ** 3;
        x = m + 1;
    }
}
contract Mutated6c {
    uint x = 0;
    uint y = 0;
    constructor (uint x_, uint y_) {
        x = x_;
        y *= m;
        y +=
