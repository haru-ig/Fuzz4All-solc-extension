pragma solidity ^0.8.0;
contract BakedBeerExample {
    uint _a;
    uint _b;
    function a (uint _b) public pure {
      this.modify(_b);
    }
    function modify(uint _b) public pure {
      uint _a;
      uint256 j;
      while (j < 10) {
        _a += _b;
        _b += _b;
        j++;
      }
    }
}
