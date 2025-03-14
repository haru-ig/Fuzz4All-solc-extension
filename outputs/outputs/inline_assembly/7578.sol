pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
   function f() public returns (uint) {
       uint _tmp1 = initialx + 42;
       uint _tmp2 = initialx + _tmp1;
       uint _tmp3 = initialy + 0x1234;
       uint _tmp4 = _tmp2 + 0x1234 + initialy;
       uint _tmp5 = _tmp3 + 1 + initialx - initialy;
       uint _tmp6 = initialy + _tmp3;
       uint _tmp7 = initialy + 0x1234;
       uint _tmp8 = 0x1234 + _tmp1;
       uint _tmp9 = 1 + _tmp7 - _tmp8;
     return _tmp1 + _tmp5 + _tmp4 + _tmp9;
   }
}
