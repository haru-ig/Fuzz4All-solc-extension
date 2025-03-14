pragma solidity ^0.8.0;
contract MixedContractsExample {
  struct MixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  struct NotMixedContracts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  function main(uint64 witness) public pure {
      MixedContracts memory x;
      NotMixedContracts memory y;
      x.x=x.x+y.x+y.y+2*witness;
      y.y=witness;
  }
}
