pragma solidity ^0.8.0;
contract Fallback {
    uint256[2] _arr;
    uint256 _a;
    constructor() {
        _a = 1;
    }
    function fallback() public {
        _arr[0] = 1;
    }
    function mfallback() public {
        _arr[1] = 2;
    }
    function mut2(uint256 _id) public {
        uint256 _value = _arr[_id];
        require(_value == 0, '6');
        _arr[_id!= 1? 0 : 1]++;
    }
}
