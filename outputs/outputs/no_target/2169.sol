pragma solidity ^0.8.0;
contract C {
    uint256 public a;

    constructor(uint256 _x, uint256 _y) public {
        a = _x / _y;
        a = _x * _y;
        a = _x + _y;
        a++ + a;
        a-- + a;
        a -= _x;
        a += _x - _y;
        a >>= 1;
        a &= 1;
        a <<= 1;
        a <<= _x;
        a >>>= 1;
        a >>>=_x;
        a <<= 1;
        a >>>= _x;
    }
    function test() public {
        Modifications3_SEM7 storage b = new Modifications3_SEM7(1, 1);
        b.a >>= 1;
    }
}
