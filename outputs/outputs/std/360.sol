pragma solidity ^0.8.0;
contract Mutate {
  uint8 a, b;

  function set2(int8 c, int8 d) public pure {
    if (c == 1) a = 1;
    b = a;
    a = d;
  }

  function test(int8 a) public pure {
    if (a == 1 || a == 3) {
      set2(1,1);
       if ((2*b) == (a*((-1)*(a + 2))))) console.log('mutated');
    }
  }
}
