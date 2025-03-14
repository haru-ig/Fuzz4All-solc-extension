pragma solidity ^0.8.0;
contract L1 {
    uint constant initialx = 1;
    uint constant initialy = 0xCABC;
    function f() public returns (uint x) {
      x = 0x4325E2;
      x = x + 0x12DE + f();
      x = x + 0x2345 + 0xABC + 0xA43;
      x = x + 0x1234;
      x = x + 0xFDEADB;
      x = x + 0xAB8C;
      x = x + 0xDECADEF;
      x = x + 0xBEEF12;
      x = x + 0xDECAFDEDBA;
      x = x + 0xFADADA;
      x = x + 0xBEEBAF3;
      x = x + 0x43E3;
      return x;
    }
   function g() public view returns (uint y) {
      y = 0x123456789;
      y = y + 0xDEDEF12;
      y = y + 0x9ABCEF;
      return y;
   }
   function h() external view returns (uint y) {
      y = 0x12D6F8;
      y = y + 0xABC9;
      return y;
   }
}
