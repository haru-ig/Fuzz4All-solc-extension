pragma solidity ^0.8.0;
contract mutationv08 {
   constructor () public { _;}
   function f() internal pure returns(uint8) { uint8 c; uint8 sc  = 32; }
 }
interface I{
    function f() internal pure returns(uint8);
}
contract mutationv07 {
   constructor () public { _;}
   function f() public pure returns(uint8) { uint8 c; (c = I(0).f(), c, (uint8(~c), (uint64(10) < uint64(i), i < uint(3)))); }
 }
