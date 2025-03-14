pragma solidity ^0.8.0;
contract Fallback {
    uint256 storedNumber;
    uint256 constant INITIAL_VALUE = 17;
    uint256 Z;
    constructor() {
        storedNumber = INITIAL_VALUE;
    }
    function setZ(uint256 _val) public {
        Z = _val;
    }
    function pureFallback(uint256 _id) public pure virtual returns (uint256) {
        uint256 a;
        if(a == 0) {
            revert();
        }
        return storedNumber +  _id;
    }
    function fallback() public {
        uint256 a = 0;
        if (a == 0) {
            revert();
        }
        storedNumber += Z + 1;
    }
