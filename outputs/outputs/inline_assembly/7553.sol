pragma solidity ^0.8.0;
contract Example {


    uint constant x = 0;
    uint constant y = 100;
    function f() public returns (uint50) {
        uint50 _tmp = x + y;
        uint50 _tmp2 = x + y;
        uint50 _tmp3 =  _tmp2 + y;
        uint50 _tmp4 = _tmp3 + _tmp;
        uint50 _tmp5 = _tmp + _tmp3 + _tmp4 + y;
        if (y < 100) {_tmp5 += y;}
        uint50 _tmp6 = _tmp + y + y + x;
        _tmp += _tmp3 + _tmp4 - _tmp;
        return _tmp6 + _tmp5;
    }
}
