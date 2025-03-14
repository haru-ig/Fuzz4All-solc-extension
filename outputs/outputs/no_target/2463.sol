pragma solidity ^0.8.0;
contract mutationv566
{
   constructor () public {}
   function f() internal pure returns (uint8)
   { uint8 c;
    unchecked {
       (c) = 3;
    }

    return c;
   }
}
 contract mutationv570
{
   constructor () public {}
   function d() internal pure returns(uint8) { uint8 b; unchecked {b =32;} return b;}
}
 pragma solidity ^0.8.0;
 contract mutationv570
{
   constructor () public {}
   function d() internal pure returns (uint8)
   { uint8 b;
    unchecked {
       (b) = 3;
    }
    return b;
   }
}
