pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
  }

  function main(MixedContacts memory y)
    public pure {
      y.x++;
      y.y = y.x + y.x;
  }
}
