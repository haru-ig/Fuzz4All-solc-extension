pragma solidity ^0.8.0;
contract Mods {
   struct Test {
       uint[] a;
   }
   uint public k = 6;

   function test(uint[] memory m) {
       Test memory n = Test(a: m);
       a[k] = m[k];
   }
}

pragma solidity ^0.8.0;
contract CalldataArrays {
   address payable p1;
   address payable p2;
   address payable p3;
}
