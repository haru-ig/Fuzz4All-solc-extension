pragma solidity ^0.8.0;
contract Mutant4b {
  constructor() public {
    uint32 a = 1;
    uint32 c = 2;
    uint32 d = 3;
    uint32 e = 4;
  }
  function f() public pure returns (uint32 a, uint32 b) {
    a = b;
    b = d;
    return (a+1, b-1);
  }
}
