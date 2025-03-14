pragma solidity ^0.8.0;

contract SimpleExample19 {

    function testMe(uint _arg) public view {
        return;
    }

    event testEvent(uint indexed _arg);

    function change(uint _x, uint256 _z) public {
        _x = _x - _z;
        _x = _x ^ _z;
        _x = _x * _z;
        _x = _x / _z;

        (bool b1, bool b2, bool b3, bool b4, bool b5) = testMe(_x);
        emit testEvent(_x);
    }
}
