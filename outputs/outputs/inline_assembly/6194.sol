pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  constructor(uint256 _x, uint _y) {
      x.x=_;
      x.x=_+_;
      x.x=__-_-_;
      x.x=-_;
      x.x=_-_+_;
      x.x=_-_-_+_;
      x.x=_-_+_;
  }
  function main(uint64 witness) public view returns (uint) {
      assert(___.y >___.x);
      uint256 y;
      uint256 x;
      return (uint) (y+x+2/y);
  }
}
