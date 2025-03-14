pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory y)
  public pure {
      uint result = 0;
      for (uint i = y._x; i < 10; i++) result += i;
      y._y = result;
  }
}

contract MixedContactsExample11 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory y)
  public pure {
      uint256 x = y._x + 1;
      uint256 yyy = iota;
      MixedContacts memory yyy = y;
      uint zzz = x + y._y + yyy._x + yyy._y;
      y._x = x;
      y._y = zzz;
  }
}
