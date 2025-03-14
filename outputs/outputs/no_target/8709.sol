pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbiV02 {
    function f(uint256 x) public pure {
      x = x + 1 + 2;
      x = x + 2 * x + 3 * 2;
      uint256 y;
      if(x!= y) {
        if(x!= y * 2) {
          x -= x * x;
        }
      }
      x = x + 1 * x * 2 + 2 + 3 * x;
    }
}
