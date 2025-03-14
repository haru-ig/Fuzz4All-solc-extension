pragma solidity ^0.8.0;
contract Mutate39 {
    uint public a;
    uint public b;
    uint public _x;
    constructor(uint256 x, uint256) {
        a = x;
        b = _x + 2;
    }
    fallback() external {
        _x = a + 2;
    }
}
pragma solidity ^0.8.0;
contract Mutate38 {
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
