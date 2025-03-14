pragma solidity ^0.8.0;
contract TestMutator6 {
    uint256 public x;
    uint256 public z;
    constructor () public {
        x = 0x0;
        z = 0x1;
    }
    function set(uint256 _value1) public {
    if (_value1 < _value1 & _value1 > 0x0) _value1 = 0;
    x = _value1;
    if (_value1 < 0x0) _value1 = 0;
    x > _value1? x = 0 : x = x + 1;
    z < _value1 & _value1 > 0x0? _value1 = 0 : _value1 = _value1 + 1;
    }
    function set2() public {
    x > x + 1 & x < 0? _value1 = 0 : _value1 = _value1 + 1;
    if (x < x + 1) x = 0;
    if (x < x + 1 & x > _value1) x = 0;
    z < x | x < 1? x = 0 : x = x + 1;
    }
}
