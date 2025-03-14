pragma solidity ^0.8.0;
contract Mutate {
  function mutate() public view {
    uint256 i;
    for (i = 0; i < 100; i++) {
      i += 1;
    }
  }
}

pragma solidity ^0.8.0;
contract Nesting {
  function nest(uint256 x, uint256 y) public pure {
    uint z = 0;
    for (uint i = 0; i < x; i++) {
      z += y;
    }
    assembly { z := z }
  }
}
