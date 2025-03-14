pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample9 {
  struct MixedContacts {
      uint256_2 _x;
      uint_1 _y;
  }
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
contract MixedContactsExample9 {
  struct MixedContacts {
      uint256_2 _x;
      uint256_0 _y;
  }
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
contract MixedContactsExample9 {
  struct MixedContacts {
      uint256_1 _x;
      uint256 _y;
  }
  function main(MixedContacts memory y)
  public pure {
      y._x += 1;
  }
}
