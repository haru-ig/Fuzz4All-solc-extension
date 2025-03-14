pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private _x;
  constructor()
  payable {
     _x = msg.value;
  }
  function main()
  public returns (MixedContacts memory){
    {
      MixedContacts memory ss = main();
      return ss;
  }
  }
}
