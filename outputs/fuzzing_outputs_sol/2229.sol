pragma solidity ^0.8.0;
contract Mutater12922 {
    uint160 public immutable _x;
    constructor(uint160 _x) {
        _x;
    }
    fallback(uint160 y) external {
        uint160 x = _x + y / 2;
        require(x <= 2**32);
    }
}
