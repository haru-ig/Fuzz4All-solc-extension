pragma solidity ^0.8.0;
contract Mutate37 {
    uint public a;
    uint public b;
    uint public _x;
    constructor(uint256 x) {
        a = x;
        b = _x + 2;
    }
    fallback() external {
        b = a + 4;
    }
}
contract Mutate36 {
    uint public a;
    uint public b;
    uint public _x;
    uint public _y;
    constructor(uint256 x, uint256 y) {
        a = x;
        b = _x + y;
    }
    fallback() external {
        _x = a + 2;
        _y = _x + 2;
    }
}
contract Mutate35 {
    uint public _x;
    uint public _y;
    constructor(uint256 x, uint256 y) {
        _x = x + 2;
        _y = y + 2;
    }
    fallback() external {
        uint256 a = _x;
        uint b = 2;
        uint256 c = a + b;
    }
}
contract Mutate34 {
    uint public _x;
    uint public _y;
    address public _z;
    constructor(uint256 x, uint256 y, address z) {
        _x = x + 2;
        _y = y + 2;
        _z = z;
    }
    fallback() external {
        uint256 a = _x;
        uint256 b = _y;
        uint256 c = _z;
    }
}
contract Mutate33 {
    uint public _x;
    uint public _y;
    address public _z;
    constructor(uint256 x, uint256 y, address z) {
        _x = x + 2;
        _y = y + 2;
        _z = z;
    }
    fallback() external {
        uint256 a = _x;
        uint b = 2;
        uint256 c = a + b;
    }
}
contract Mutate32 {
    uint public _x;
    uint public _y;
    address public _z;
    constructor(uint256 x, uint256 y, address z) {
        _x = x + 2;
        _y
