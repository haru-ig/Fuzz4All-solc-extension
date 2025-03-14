pragma solidity ^0.8.0;
contract RestrictedMutator {
    uint x;

    uint f1() public pure returns (uint) {
      return a1 + x / 65537;
    }

    uint f2(uint x) public pure returns (uint) {
      return a1 + x;
    }




    function g(uint) public pure returns (uint) {
      if (x == 0) {
        return 1;
      } else {
        return 2 * ~x;
      }
    }
}
