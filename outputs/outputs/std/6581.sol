pragma solidity ^0.8.0;
library Mutate16 {
  struct Mutate17 {
    uint32 x;
    uint32 y;
  }
  function noPublicModification(Mutate17 memory s) public noPublicModification(bytes32, 35) return (Mutate17 memory) {
    return s;
  }
}
contract Mutate18 {
    function noPublicModification(uint32) public noPublicModification(0x6072a0cb000000000000, 20) noPublicModification(x, 8) public noPublicModification(x, 1000) public returns (uint32) {
        return x;
    }
}
interface Mutate19 {
    function noPublicModification(uint32, uint32) public;
}

pragma solidity ^0.8.0;
contract Mutate20 {
    uint32 x = 8;
    function noPublicModification() public returns (uint32) {
        return x;
    }
}
interface Mutate21 {
  function noPublicModification(uint32) public returns (uint32);
}

contract Mutate22 {
    uint x = 9;
    constructor (uint32 _x) public {
        x = _x;
    }
    function noPublicModification() public returns (uint32) {
        return x;
    }
}

library Mutate23 {
  uint32 x = 5;
  function noPublicModification() public returns (uint32) {
    return x;
  }
}
contract Mutate24 {
    uint32 private x = 6;
    function noPublicModification() public returns (uint32) {
      return x;
    }
}
