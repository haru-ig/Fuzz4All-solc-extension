pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 1;
    uint constant initialy = 0x0123;
    function f() public returns (uint x) {
        uint _tmp = initialx + initialy;
        uint _tmp1 = initialx + 1;
        uint _tmp2 = initialy + 1;
        uint _tmp3 = initialx;
        uint _tmp4;
        x = _tmp1 + _tmp1 + _tmp1 + _tmp;
        x = _tmp3 + _tmp2 + _tmp1 + _tmp + _tmp1 + _tmp;
        _tmp1 = _tmp1 + _tmp1 + _tmp1 + _tmp1;
        uint _tmp5;
        uint _tmp6;
        _tmp1 ++;
        _tmp5 = f() + _tmp2;
        _tmp1 ++;
        _tmp2 ++;
        _tmp6 = f() + _tmp4 + initialx + initialy + _tmp3;
        _tmp1 ++;
        _tmp3 ++;
        _tmp2 ++;
        _tmp1 ++;
        _tmp2 ++;
        _tmp3 ++;
        _tmp2 ++;
        _tmp2++;
        _tmp = f() + _tmp5 + _tmp2 + _tmp;
        _tmp1++; _tmp1++; _tmp1++; _tmp1++; _tmp1++;
    }
}
