pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256[5] _arr;
    constructor() {
        _arr[0] = 1;
    }
    function mut() public payable {
        _arr[0] = 1;
    }
    function get() returns (uint256) {
        return _arr[0];
    }
}
