pragma solidity ^0.8.0;
contract C41_bug551266380692 {
 uint256 x = 1;
 uint256 y = 100;
 uint256 a;
 uint256 b;
 uint256 result;
 function g() public view returns (uint256 r) { uint88 i = 3.14; return a - (92 * b); }
 function test() public {
   x *= 1100;
   b = 26;
   a = 0;
   while (b > 0) {
     b >>= 1;
     y >>= 1;
   }
   x >>= 1;
   b = x + ((y * 41)-1);
   result = g();
   if (y == result) { revert(); }
   if (y == ~x + (~b & 0x3FFF)) { revert(); }
 }
}

pragma solidity ^0.8.0;
contract C42_bug807923686620 {
 function f(uint i, uint j) pure public {
   if (j > i) {
    return;
   }
   if (j <= ((uint(1) << 20)) - uint(1)) {
    return;
   }
   if (i >= 32) {
    j++;
   }
   if (~uint256(i) == (uint256(i) >> 1)) {
    j--;
   }
   if (uint256(i) >= (~uint256(i) >> 1)) {
    return;
   }
   if (j > i + ((uint(1) << 20)) - uint(1)) || (j < i + ((uint(1) << 20)) - uint(1)) && j > ((uint(1) << 20)) - uint(1))) {
    return;
   }
   if (~uint(~i) ^ uint256(~i << 1) == uint256(--j)) {
    return;
   }
   if (~uint(j) ==  ~uint(~uint256(i)) && i < uint(~uint(~i) - uint(uint256(i)) >> 1)) {
    return;
   }
   if ((uint(1) << (21)) == ~uint(uint256(i << 1) - uint(uint256(i) >> 1)) || ((uint(1) <<
