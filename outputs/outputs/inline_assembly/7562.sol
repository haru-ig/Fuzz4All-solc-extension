pragma solidity ^0.8.0;
contract Example {
 uint constant x = 0;
 uint constant y = 0x1234;
 function f() public returns (uint) {
     uint _tmp7 = 42;
     uint _tmp8 = x + _tmp7;
     uint _tmp9 = _tmp8;
     uint _tmp10 = y + _tmp8 + 0x1234;
     uint _tmp11 = x + _final + _tmp9 + y;
     uint _final = _tmp7 + _tmp9 + _tmp10;
     return _final + _tmp11 + _tmp10;
 }
}
