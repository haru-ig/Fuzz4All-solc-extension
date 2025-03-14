pragma solidity ^0.8.0;
contract Grandcaller6 {
    uint256[55] _arr;
    constructor() {
        _arr[0] = 1;
    }
    function mut(uint256 _id, uint256 _value) public {
        _arr[_id] = _value;
    }
    function get(uint256 _id) public view returns (uint256) {
        return _arr[_id];
    }
    receive () {
        _arr[0xf5f5f5f5f5f5f5f5] += 1;
        fallback();
    }
    receive () {
        _arr[0xf5f5f5f5f5f5f5f5f] += 1;
        fallback();
    }
    receive () {
        _arr[0xf5f5f5f5f5f5f5f5f] += 1;
    }
}
