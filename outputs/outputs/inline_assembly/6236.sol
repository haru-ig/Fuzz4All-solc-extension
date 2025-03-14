pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample9 {
  struct MixedContacts {
      uint256 public _x;
      uint private _y;
  }
  function main() public pure {
      MixedContacts memory y = MixedContacts(1, 1);
      y._y += 1;
      main(y);
  }
}
