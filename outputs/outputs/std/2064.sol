pragma solidity ^0.8.0;
contract Array_equivalent_32Mutated {
   function set(uint x, uint index) public pure {x = x;
   Array_equivalent_32Mutated.set(x, index);
   x = x.sub(y);
   Array_equivalent_32Mutated.set(x, index);
}
   function set2() public pure {x = x.sub(y);
   Array_equivalent_32Mutated.get(index);
}
