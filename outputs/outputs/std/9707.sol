pragma solidity ^0.8.0;
contract MutateBigNeg {
    uint x;
    uint y;
    constructor() {
        x = -0x4;
        y = -1;
    }
}

pragma solidity ^0.8.0;
contract MutateHexPos {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(uint(x) == v, "x == uint(v)");
        _;
    }
    modifier yIs(uint v) {
        require(uint(y) == v, "y == uint(v)");
        _;
    }
    constructor() {
        x = 0x4;
        y = 0xaa;
    }
}

pragma solidity ^0.8.0;
contract MutateHexNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(uint(x) == v, "x == uint(v)");
        _;
    }
    modifier yIs(uint v) {
        require(uint(y) == v, "y == uint(v)");
        _;
    }
    constructor() {
        x = 0x4;
        y = 0xaa;
    }
}

pragma solidity ^0.8.0;
contract MutateDecPos {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(uint(x) == v, "x == uint(v)");
        _;
    }
    modifier yIs(uint v) {
        require(uint(y) == v, "y == uint(v)");
        _;
    }
    constructor() {
        x = 0x88;
        y = 0xaa;
    }
}

pragma solidity ^0.8.0;
contract MutateDecNeg {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(uint(x) == v, "x == uint(v)");
        _;
    }
    modifier yIs(uint v) {
        require(uint(y) == v, "y == uint(v)");
        _;
    }
    constructor() {
        x = 0x88;
        y = 0xaa;
    }
}

pragma solidity ^0.8.0;
contract MutateBase {
    uint x;
    uint y;
    modifier xIs(uint v) {
        require(v == x, "v == x");
        _;
    }
    modifier yIs(uint v) {
        require(v == y
