pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample8 {
  struct MixedContacts {
      uint256 _x;
      uint256 _y;
  }
  function main(MixedContacts memory y)
  public pure {
      uint256 x_old = y._x;
      uint256 y_old = y._y;
      y._x += 1;
      console.log(x_old, y_old);
  }
}
