pragma solidity ^0.8.0;
contract B3 {
   function uintStr(uint index, uint _uint) public pure returns (string memory) {
      uint[] memory arr = [1, 2, 81, 42];
      return uintStr(arr[index], _uint);
   }
   function strUint(uint _uint) public pure returns (uint) {
      bytes memory test = "abcdef1234";
      uint x = uint(test);
      return  uint(_uint) - 1;
   }
}
contract B4 is B2, B3 {
   string[] memory test = new string[](100);
   event E;
   function uintStr(uint index, uint _uint) public pure returns (string memory) {
      return uintStr(index, _uint);
   }
   function strUint(uint _uint) public pure returns (uint) {
      return _uint;
   }
   function test3() public {
      strUint(9);
      test[9] = "abc";
      uint a;
   }
   function test31() public {
      uint myUint;
      uint[] memory myArr;
      strUint(31);
      uint b;
      myArr.length = 100;
      myUint = 31;
      uint c;
      uint d;
      (a,b,c,d) = (34,54,76,9);
   }
   function test32() public {
      uint a;
      uint b;

      while (true) {
         (a, b) = (34,54);
         continue;
      }
   }
}
contract B5 {
   uint m;
   uint p;
   uint q;
   uint r;
   uint s;
   uint a;
   uint b;
   uint x;
   uint y;
   function m() public {
      m = 17;
   }
   function p() public {
      p = 17;
   }
   function q() public {
      p = 2 * 99;
   }
   function r() public {
      r = 2 * 99;
   }
   function s() public {
      s = 1;
   }
   function a() public {
      a = 2;
   }
   function b() public {
      b = 17;
   }
   function x() public {
      x = 34;
   }
   function y() public {
      y = 76;
   }
   function test_mul() public {
      m = m * p;
      x = m * q;
      a = 203 * r + s;
      b = q * r * p + b;
      (b, y) = (b * p, y * 17);
   }
   function test_mul_2() public {
      m = m * p;
      x = m * q;
      b = a * b;
      a = 2 * p + a;
      a = (2 * p) + a;
   }
