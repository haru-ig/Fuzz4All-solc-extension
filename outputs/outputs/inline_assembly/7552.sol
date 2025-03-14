pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 10;
    function f() public returns (uint) {
        uint _tmp7 = x + y;
        uint _tmp8 = x + y;
        uint _tmp9 =  _tmp8 + y;
        uint _tmp10 = _tmp9 + _tmp7;
        if (y < 100) {_tmp10 += y;}
        uint _tmp11 = _tmp7 + y;
        _tmp7 += _tmp9 + y;
        uint _final = x + _tmp7 + y;
        return _final + _tmp10 + _tmp11;
    }
}
