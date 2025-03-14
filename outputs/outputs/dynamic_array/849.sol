pragma solidity ^0.8.0;
contract EquivalentSolidity {
    function x() public pure returns (uint) {
  uint x=167;
  x = x+17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x + 17;
  x = x+1;

        return x;
    }
}
