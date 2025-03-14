pragma solidity ^0.8.0;
contract Example {
    uint constant x = 0;
    uint constant y = 0;
    uint constant z = 0;
    uint constant tmp = 1000;
    function f() public {
        uint _tmp = 0;
        uint _tmp2 = 10001;
        uint _tmp3 = tmp - _tmp + 1010;
        uint _tmp4 = tmp - 1000 - 1010 + _tmp3;
        uint _tmp5 = 1000 + _tmp3 - _tmp4;
        uint _tmp6 = tmp + 10 + z + y + 5;
        uint _tmp7 = tmp + tmp + zz;
        uint _tmp8 = zz + x;
        uint _tmp9 = x + tmp + _tmp8 + y + zz + tmp + tmp9 + tmp9 + 50;
    }
}
