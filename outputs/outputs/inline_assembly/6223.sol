pragma solidity ^0.8.0;
contract MixedContactsExample7 {
  uint256 z;
  MixedContacts memory _x;
  constructor (MixedContacts memory x)
  public pure {
      _x = (x);
      _x._x+=10;
  }
  function test()
  public pure {

  }
}
