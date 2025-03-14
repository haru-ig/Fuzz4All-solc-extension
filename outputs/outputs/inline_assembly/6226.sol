pragma solidity ^0.8.0;
abstract contract A {}
contract B is A {}
contract C is A, B {}

pragma solidity ^0.8.0;
abstract contract A {}
contract B is A {}
contract C is B {}

contract MixedContactsExample8 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  A x;
  uint y;
  function main(MixedContacts memory y)
  public pure returns(uint, bool) {
      y = 3;
      return (y, true);
  }
}

contract MixedContactsExample9 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  A x;
  uint y;
  function main(MixedContacts memory y)
  public pure returns(uint, bool) {
      B y2;
      y2.z = 1;
      y = 3;
      return (y, true);
  }
}

contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  A x;
  uint y;

  function main(MixedContacts memory y)
  public pure returns(uint, bool) {
      B y2;
      y = 3;
      return (3, false);
  }
}

contract MixedContactsExample11 {
  uint256 x;
  function main(uint8 y)
  public pure returns(uint, uint8) {
      x = 3;
      return 3, x;
  }
}
