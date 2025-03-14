pragma solidity ^0.8.0;
 contract B {
     uint x;
     constructor() public {
         x = 1;
         x *= 0xFFFFFFFffffFfc;
         x = x + 1;
     }
 }

pragma solidity ^0.8.0;
contract B {
     uint x;
     constructor() public {
         x = 1;
         x = x * 0x07FFFFFFFffffFfc >> 1;
         x = x ^ 0x080000000000000000000000000000000000000000000000000000000000000100;
         x = x * 0xffffffffFFFFFFFFfffffffffffffffffffffffffffffffefffffc2f;
     }
 }
