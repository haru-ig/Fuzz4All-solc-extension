pragma solidity ^0.8.0;
library Lib2 {
   struct MyStruct { uint8 a;  uint8 b; }
   function getX(Lib.MyStruct memory x) pure external returns (uint8) { return x.a; }
}
