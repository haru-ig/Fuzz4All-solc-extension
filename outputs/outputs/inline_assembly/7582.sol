pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x98765432109876543210;
    function f() public {
        uint _tmp1 = initialx + 0x1234;
        uint _tmp2 = initialx + _tmp1;
        uint _tmp3 = initialy + 0x1234;
        uint _tmp4 = _tmp2 + _tmp4;
        uint _tmp5 = _tmp3 + _tmp9;
        uint _tmp6 = initialy + f();
        uint _tmp7 = initialy + _tmp12;
        uint _tmp8 = _tmp6 + _tmp1;
        uint _tmp9 = _tmp8 + initialx;
        uint _tmp10 = _tmp9 + _tmp5;
        uint _tmp11 = initialy + _tmp6
    }
}
