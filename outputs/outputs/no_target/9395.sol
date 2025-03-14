pragma solidity ^0.8.0;

contract SemanticalEquiv12
{
   uint160 a;
   uint160 b;
   uint160 c;

   function f12(uint160 _a, uint160 _b) public returns(uint160)
   {
      a = _a;
      b = _b;
      c = a ^ b * 2 + a ^ _b + a * b;
      c = 0x7fff + (c == 0x8000080000000000000);
      c = 0x7fff + a - c;
