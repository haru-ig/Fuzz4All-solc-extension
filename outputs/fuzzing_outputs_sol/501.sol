pragma solidity ^0.8.0;
contract Grandcaller9 {
    uint256[5] _arr;
    constructor() {
        _arr[0] = 1;
    }
    function call(uint256 _id) external payable {
        uint256 _value = _arr[_id];
        require(_value == 1, '1');
        _arr[_id - 1]++;
    }
    function mut(uint256 _id) external mut payable {
        uint256 _value = _arr[_id];
        require(_value == 1, '2');
        _arr[_id - 1] = 2;
    }
}
