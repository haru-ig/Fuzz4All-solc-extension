pragma solidity ^0.8.0;
contract MutatedFallback {
    uint256 public _x;
    constructor() {
    }
    function invalidAdd(uint256 x) public pure returns (uint256) {
        return add(x) * 2;
    }
    receive() payable external {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
    function divide(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x / y + x / y) * (y > 1? y - 1 : 2);
    }
}
