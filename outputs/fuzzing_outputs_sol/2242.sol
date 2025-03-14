pragma solidity ^0.8.0;
contract C {
    uint256 public _x;
    constructor(uint256 _x) {
        _x;
    }
    function add(uint256 x) public view returns (uint256) {
        return x * 2;
    }
}
