pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint y;
  }
  function main(uint64 witness) public pure returns (uint) {
    require(x.x==witness, "Error");
    MixedContacts memory x;
    x.y+=x.y/x.x;
    return (uint) (x.y+x.y+3/x.y);
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  function main(uint64 witness) public pure returns (bytes32) {
    MixedContacts memory x;
    x.x=uint256(witness);
    return x.x;
  }
}
contract MixedContactsExample {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  event NewMixedContactsCreated(MixedContacts memory m);
  function main(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.x=uint256(witness);
    x.y+=x.y/x.x;
    emit NewMixedContactsCreated(x);
    return (uint) (x.y+x.y+3/x.y+x.x);
  }

  struct MixedContacts {
      bytes32 x;
      uint256 y;
  }
  event NewMixedContactsCreated2(MixedContacts memory m);
  function main2(uint64 witness) public pure returns (uint) {
    MixedContacts memory x;
    x.x=uint256(witness);
    x.y+=x.y/x.x;
    emit NewMixedContactsCreated2(x);
    return (uint) (x.y+x.y+3/x.y+x.x);
  }
}
contract MixedContactsExample {
  struct MixedContacts {
      uint x1;
      uint x2;
      uint y;
  }

  bytes32 function getBytes(uint memory v) public returns (bytes32) if (v >= 10**27) or (v <= -10**27) {
    return bytes32(uint
