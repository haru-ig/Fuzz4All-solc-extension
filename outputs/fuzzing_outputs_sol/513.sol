pragma solidity ^0.8.0;
contract MutatedCaller {
    uint256[3] _arr;
    uint8 _a = 1;
    constructor() {
        _arr[1] = 1;
        _a = 1;
    }
    function mut(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value!= 0, '3');
        _arr[_id == 2? 1 : 2]++;
        _a++;
    }
    function call(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value == 0, '5');
        _arr[_id == 2? 1 : 2]++;
        _a++;
    }
}
