pragma solidity ^0.8.0;
contract BakedBeerExample {
    function modify(uint _a) public pure {
      uint _bout;
      uint256 j;
      while (j < 10) {
        _bout += _a;
        _a += _a;
        j++;
      }
    }
}
