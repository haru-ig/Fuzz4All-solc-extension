pragma solidity ^0.8.0;
contract mutationv3
{
   constructor () public {}
   function f() public pure returns(uint8) { uint8 c; { c =32;} return c;}
}

contract mutation {
   function f() public pure returns(uint8) { uint8 c; { c =32;} return c;}
}
