pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x._x=witness;
    return uint((x.y / x.x) + (uint(3) / x.x) + (uint(4) / x.x));
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(uint8 witness) public pure returns (uint8) {
    MixedContacts memory x;
    x._x=witness;
    return uint8((x.y / x.x) + (uint8(3) / x.x) + (uint8(4) / x.x));
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint8 _y;
  }
  function main(uint16 witness) public pure returns (uint16) {
    MixedContacts memory x;
    x._x=witness;
    return uint16((x.y / x.x) + (uint16(3) / x.x) + (uint16(4) / x.x));
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint16 _y;
  }
  function main(uint[4] calldata witnesses) public pure returns (uint) {
    MixedContacts memory x;
    for (uint i=0; i<4; i++) { x._x=witnesses[i]; }
    return uint((x.y / x.x) + (uint(3) / x.x) + (uint(
