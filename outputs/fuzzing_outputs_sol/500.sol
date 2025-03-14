pragma solidity ^0.8.0;
contract Grandcaller11 {
    uint256[6] _arr;
    constructor() {
        _arr[1] = 1;
        _arr[0] = 2;
    }
    function call(uint256 _id) public {
        uint256 _value = _arr[_id - 1];
        require(_value == 2, '1');
        _arr[_id * 2 - 1] = 2;
        _arr[_id * 2 - 2] = 1;
    }
    function mut(uint256 _id) public {
        uint256 _value = _arr[_id - 1];
        require(_value == 2, '2');
        _arr[_id * 2 - 1] = 1;
        _arr[_id * 2 - 2] = 2;
    }
}
