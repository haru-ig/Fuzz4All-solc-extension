pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint _tmp2 = 10000000000000000000 ether;
        uint _tmp3 = 10000000000000000000 ether;
        uint _tmp4 = _tmp3 + _tmp2;
        uint _tmp5 = _tmp4 + x + y;
        uint _tmp6 = x + _tmp4;
        uint _final = _tmp5 + _tmp6;
        return _final;
    }
}

uint yul(uint _x, uint _y, uint x_y) internal pure returns (uint) {
    uint y = add(_x, _y);
    y = add(_x, y);
    if (_y < 100) {
        y = add(y, subtract(y, x_y));
    }
    y = add(_x, y);
    y = add(_x, y);
    y = divide(y, add(x_y, y));
    y = add(x_y, y);
    y = add(_x, y);
    return add(_x, add(x_y, y));
}
