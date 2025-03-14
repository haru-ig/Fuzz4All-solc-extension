pragma solidity ^0.8.0;
contract MutatedCaller7 {
    uint256[5] _arr;
    constructor() {
        _arr[0] = 1;
    }
    function mut(uint256 _id, uint256 _value) public {
        _arr[_id] = _value;
    }
    function get(uint256 _id) public view returns (uint256) {
        return _arr[_id];
    }
}
