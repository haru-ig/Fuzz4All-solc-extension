pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample2 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x, uint64 witness)
  public {
      if (witness == 0) x._x=x._x+witness;
      else x._x=x._x+witness+2;
      x._y=x._y+witness;
      if (witness == 0) x._y=x._y+witness+1;
      else x._y=x._y+witness-1;
  }
}

pragma solidity 0.6.8;

contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x, uint64 witness)
  public {
    if (witness == 0) x._x=x._x+witness;
    else x._x=x._x+witness+2;
    x._y=x._y+witness;
    if (witness == 0) x._y=x._y+witness+1;
  }
}
