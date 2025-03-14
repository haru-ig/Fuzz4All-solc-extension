pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
    function f() public returns (uint) returns (uint) {
        uint _tmp7 = 42;
        uint _tmp8 = initialx + _tmp7;
        uint _tmp9 = _tmp8;
        uint _tmp10 = _tmp9 + initialy + 0x1234;
        uint _tmp11 = initialx + _tmp9 + initialy;
        uint _final = _tmp7 + _tmp9 + 0x1234;
        return _final + _tmp10 + _tmp11;
    }
}
