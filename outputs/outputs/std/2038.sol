pragma solidity ^0.8.0;
contract ArrayMutator_64 {
   function add(uint x, uint y) public pure returns (uint) {return x+(y%5);}
   function min(uint x, uint y) public pure returns (uint) {return(x<y)?x:y;}
   function max(uint x, uint y) public pure returns (uint) {return(x>y)?x:y;}
}
contract Test {
   function test() public pure {Array_equivalent_64 test1 = Array_equivalent_64(0); assert(test1.max(0,0)==0); assert(test1.max(0,1)==0);}
   function test2() public pure {ArrayMutator_64 test2 = ArrayMutator_64(0); assert(test2.min(0,1)==1);}
}
