pragma solidity ^0.8.0;
contract BreadMilkExample {
    function modify(uint _a) public pure {
      uint _bout;
      uint256 j;
      for (j = 0; j < 50; j++) {
        _bout += _a;
      }
    }
}
