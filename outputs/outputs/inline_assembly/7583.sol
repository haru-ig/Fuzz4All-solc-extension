pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x98765432109876543210;
    function f() public returns (uint) {
        uint _tmp1 = initialx - 123;
        uint _tmp2 = _tmp1 + 843;
        uint _tmp3 = initialy - 123;
        uint _tmp4 = _tmp3 + 843;
        uint _tmp5 = initialx + 42;
        uint _tmp6 = _tmp5 + 843;
        uint _tmp7 = initialy + 42;
        uint _tmp8 = _tmp6 + _tmp7;
        return _tmp1 + _tmp4 + _tmp7 + _tmp3 + f();
    }
}
