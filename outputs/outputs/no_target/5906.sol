pragma solidity ^0.8.0;
contract C {
    uint256[4] constant MAX = [3,6,9,11];
    uint256 private _x;
    constructor() {
        _x = 100;
    }
}
