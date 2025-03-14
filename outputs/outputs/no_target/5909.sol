pragma solidity ^0.8.0;
contract C {
    uint256 constant MAX = 4294967295;
    uint256 internal _x;
    constructor() {
        _x = _x.max(840);
    }
}
