pragma solidity ^0.8.0;
contract Mutated {
    function mult(uint x) public pure {
      uint a = 0;
      for (uint i = 1; i < 20; i++) {
          a=(a==0)? x*x*x : a;
          printMultiples(a, i);
      }
    }
}
