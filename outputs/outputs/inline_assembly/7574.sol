pragma solidity ^0.8.0;
contract Example {
    address private owner;
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
    function f() public returns (uint) {
        uint _tmp6 = (_tmp4 + initialx + initialy) + 0x1234;
        uint _tmp4 = _tmp2 + initialx + initialy;
        uint _tmp2 = _tmp1 + 42;
        uint _tmp1 = _tmp2 + _tmp4;
        uint _tmp3 = _tmp1 + initialy;
        return _tmp1 + _tmp5 + _tmp4 + _tmp6;
    }
}
