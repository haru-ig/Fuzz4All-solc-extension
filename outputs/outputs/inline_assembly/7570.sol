pragma solidity ^0.8.0;
contract Example {
    address private owner = msg.sender;
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
    function f() public returns (uint) {
        uint _tmp1 = initialx + 42;
        uint _tmp2 = initialx + _tmp1;
        uint _tmp3 = initialy + 0x1234;
        uint _tmp4;
        _tmp4 = _tmp2 + 0x1234 + initialy;
        uint _tmp5;
        _tmp5 = _tmp3 + initialx + initialy;
        return _tmp1 + _tmp5 + _tmp4 + _tmp5;
    }
}
