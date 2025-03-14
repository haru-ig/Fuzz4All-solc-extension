pragma solidity ^0.8.0;
contract MixedContainersExample {
  struct MixedContacts {
      uint256 x;
      uint y;
      uint32 _0;
      bytes x1;
      bytes2 _1;
      bytes4 _2;
  }
  MixedContacts x;
  function main(uint witness) public pure {
    x.x=x.x+witness;
    x.x+=x.y+witness;
  }
}
