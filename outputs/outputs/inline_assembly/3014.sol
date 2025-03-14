pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    uint public x = 5;
    uint public y = 0;
    function setX(uint _x, uint _y) public {
        x = _x;
        y = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return x;
    }
    function test(uint _x) public returns (uint) {
        uint a = getX(x);
        setX(_x, a+1);
        uint b = getX(x);
        if (a == b) {
            return getX(_x);
        }
        return (y+_x);
    }
    function test2(uint _x) public returns (uint) {
        uint a = getX(x);
        setX(_x, a+1);
        uint b = getX(x);
        if (_x == b) {
            return getX(_x);
        }
        return (y+_x);
    }
    function test3(uint _x) public view returns (uint) {
        uint a = getX(x);
        setX(_x, a+1);
        uint b = getX(x);
        if (_x == b) {
            return getX(_x);
        }
        return (y+_x);
    }
    function test4(uint _x) public {
        uint a = getX(x);
        setX(_x, a+1);
        uint b = getX(x);
        if (_x == b) {
            return getX(_x);
        }
        emit SomeEvent(_x, b);
    }
    constructor() {
        C.setX(x, 0);
        setX(x, 0);
    }
    function SomeEvent(uint _x, uint _y) public {
        require(_y > 0);
        emit Event(_x, _y);
    }
    modifier can
