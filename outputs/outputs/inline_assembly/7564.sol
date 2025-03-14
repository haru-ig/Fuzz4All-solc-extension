pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 0x1234;
    function f() public returns (uint) {
        uint _tmp8 = x - y;
        uint _tmp9 = _tmp8 + y;
        uint _tmp10 = _tmp9 * X;
        uint _tmp11 = int(_tmp10) / 2;
        uint _tmp12 = _tmp9 + _tmp11 + y + 0x1234;
        uint _tmp13 = (int(_tmp10) / 4) + y;
        uint _tmp14 = _tmp9 - _tmp13 + x;
        uint _tmp15 = (int(42) + x + y + 0x1234) - (42 + x);
        uint _final = _tmp8 + _tmp10 + _tmp12 + _tmp14 + _tmp15 + _tmp12 + _tmp8 + _tmp10 + _tmp12 + _tmp14 + _tmp15 + y;
        return _final;
    }
}
