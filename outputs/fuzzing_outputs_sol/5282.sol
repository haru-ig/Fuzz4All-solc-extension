pragma solidity ^0.8.0;
contract Contract5
{

   fallback5 _fallback5;
   uint64 x;

   constructor(uint64 a)
   {



      x = a;
   }

   function callFallback() public
   {
      _fallback5.a(999999999999999999999999999999999999999999999, x);
   }

   function fallBack1() public
   {
      _fallback5.a(123456789, x);
   }
   function fallBack2() public
   {
      _fallback5.a(99999999999999999999999999999999999999999999, 0);
   }

   function fallBack3() public pure
   {
     _fallback5.a(12345678999, 0);
   }
   function fallBack4() public pure
   {
      _fallback5.a(9999999999999999999999999999999999999999999999, 0);
   }
   function fallBack5() public
   {
      _fallback5.a(x, 123456789);
   }
   function fallBack6() public
   {
      _fallback5.a(x, 0);
   }

   function fallBack7() public
   {
      _fallback5.a(x, 0);
   }
   function fallBack8() public pure
   {
      _fallback5.a(x, 0);
   }
   function fallBack9() public pure
   {
      _fallback5.a(x, 12345678
