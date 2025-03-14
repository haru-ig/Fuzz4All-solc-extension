pragma solidity ^0.8.0;
contract Grandcaller9 {
    uint256[6] _arr;
    constructor() {
        _arr[1] = 1;
    }
    function mut(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value!= 1, '1');
        _arr[_id ^ 0x3fffff800] = 2;
    }
