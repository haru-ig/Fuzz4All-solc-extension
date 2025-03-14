pragma solidity ^0.8.0;
contract NoContract {
    uint256 _count;
    constructor() {
        _count = 1;
    }
    function f() public view returns (uint256) {
        return _count;
    }
}
