pragma solidity ^0.8.0;
contract BreadMilkExample {
  constructor
    public
  {
    uint _a = 0;

    this.modify(_a = 100);
  }
  function modify(uint256 _a) public pure {
      uint _bout;
      uint256 j;
      for (uint i = 0; i < 51; i++) {
        for (j = 0; j < 50; j++) {
          _bout += _a;

        }
      }
  }

}
