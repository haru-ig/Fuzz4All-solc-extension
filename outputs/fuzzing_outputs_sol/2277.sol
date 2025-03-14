pragma solidity ^0.8.0;
contract Caller {
    uint256 public _x;
    constructor() {
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x * 2;
    }
}
