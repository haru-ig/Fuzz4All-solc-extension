pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 42;
    uint constant initialy = 0x1234;
   function f() public returns (uint) {
       uint _tmp1 = initialx + initialy;
       uint _tmp2 = initialx + _tmp1;
       uint _tmp3 = initialy + initialx + initialy;
       uint _tmp4 = initialy + _tmp3;
       uint _tmp5 = initialy + f();
       uint _tmp6 = initialy + _tmp2;
       uint _tmp7 = _tmp6 + _tmp5 + _tmp4 + initialx + _tmp1;
     return _tmp1 + _tmp5 + _tmp4 + _tmp9;
   }
}
pragma solidity ^0.8.0;
contract Example {
    uint constant initialx = 0;
    uint constant initialy = 0x1234;
   function f() public returns (uint)   {
       uint _tmp1 = initialx + 42;
       uint _tmp2 = initialx + _tmp1;
       uint _tmp3 = _tmp1 + initialy + initialx;
       uint _tmp4 = _tmp3 + 0x1234;
       uint _tmp5 = _tmp2 + _tmp3 + _tmp4 + _tmp1 + initialx;
       uint _tmp6 = _tmp3 + initialx;
     return _tmp1 + _tmp5 + _tmp4 + _tmp2;
   }
}
