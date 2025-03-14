pragma solidity ^0.8.0;
contract D {
    uint256 constant MAX = 4294967295;
    uint256 _x;
    constructor(uint256 x) {
        _x = x;
    }
    function f() constant returns(uint a) {
        a = _x;
    }
    function g() constant returns(uint b) {
        b = _x * 2;
    }
    function h() constant returns(uint) {
        return _x / 2;
    }
}
