pragma solidity ^0.8.0;
contract Example{
   uint256 x;
   address a;
   uint256 y;
   constructor () public {
       x = 5
   }
   function test (uint256 _w) public returns(uint256) {
       y=x+_w;
       return y;
   }
}
