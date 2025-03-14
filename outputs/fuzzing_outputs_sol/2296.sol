pragma solidity ^0.8.0;
contract MutatedFallback {
    uint256 public _x;
    constructor() {
    }
    receive() public pure {
    }
    function add(uint256 x) public pure {
        _x += x;
    }
    function divide(uint256 x, uint256 y) public pure {
        uint256 q = divide(x, y);
        _x += q * q * (y > 1? y - 1 : 2);
    }
}
