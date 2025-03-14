pragma solidity ^0.8.0;
 contract Example {
    function f() public returns (uint) {
        uint _tmp = x + y;
        uint _tmp2 = x + y;
        uint _tmp3 =  _tmp2 + y;
        uint _tmp4 = _tmp3 + _tmp;
        uint _tmp5 = _tmp + _tmp4 + x;
        if (y < 100) {_tmp5 += y;}
        uint _tmp6 = _tmp + y - x;
        _tmp += _tmp2 + _tmp3 + _tmp4 - _tmp;
        return _tmp6 + _tmp5;
    }
}
