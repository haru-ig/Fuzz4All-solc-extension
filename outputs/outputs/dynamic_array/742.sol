pragma solidity ^0.8.0;
library Test {
   struct Foo {
      uint256 x;
      address y;
   }

   using Foo for Foo.xtype;
   Foo storage x_ = Foo(100, 100);

   function set(Foo memory memory x) public {
       x_.x = x_.x + 1;
   }
}
