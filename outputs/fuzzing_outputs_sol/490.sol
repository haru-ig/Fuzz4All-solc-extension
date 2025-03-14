pragma solidity ^0.8.0;
contract Grandcaller5 {
    uint256[6] _arr;
    constructor() {
        _arr[0] = 1;
        mut(0, 2);
    }
    function mut(uint256 _id, uint256 _value) public {
        _arr[_id] = _value;
    }
    function set(uint256 _id) public {
        _arr[_id] = 1;
    }
}
contract Grandcaller6 {
    uint256[6] _arr;
    constructor() {
        _arr[0] = 1;
    }
    function mut(uint256 _id, uint256 _value) public {
        mut(_id, _value);
        mut(_id, _value);
        mut(_id, _value);
    }
    function set(uint256 _id) public {
        _arr[_id] = 1;
    }
}
