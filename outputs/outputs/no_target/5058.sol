pragma solidity ^0.8.0;
contract C40_bug405547981132 {
  uint88 a;
  function get() external view returns (uint88 b) {
    a = uint88(((uint88(a * 10)) | uint88(uint(a))) / 2);
    b = uint88(((uint88(uint(a)) | uint88(uint(a))) / 100));
    return b;
  }
  function set() public { a--; }
}

contract C40_bug405547981132 {
   uint a = 2 ** 26;
   function get() returns (uint) { a = a - 2; b = a / 10; return b; }
   function set(uint n) { b = 0; a = uint88(n + a); }
}

contract C40_bug405547981132 {
   function get() returns (uint) { uint max = (2 ** 26) - 1; b = (max * a) / 10; a = uint88(b / 10); return bitmod(b, max) + (b / max) - 1 - a; }
   function set(uint n) { a = bitmul(a, 0 < n); b = a; a = uint88(n + a); }
}

contract C40_bug405547981132 {
   uint a;
   uint b;
   function get() return (uint) { a = max(a, (b * 9) / 9); b = max(uint88((a + 1) / 10), a + 1); return (a + bitmod(b, 9) - uint(a % uint88(10))) % uint(a % uint88(10)); }
   function set(uint n) { a = bitmul(a, 0 < n); b = a; a = max(a, b + n + 1); b = max(a, a + 1); a = (a + b + n) % 9; b = a; }
}
/* Please
