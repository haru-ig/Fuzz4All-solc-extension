pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
contract MixedContactsExample15 {
  struct MixedContacts {
    uint256 public y;
    uint256 public z;
  }

  function main(MixedContacts memory ss) public pure returns (MixedContacts memory){
    assembly {
      ss := ss
    }
    return ss;
  }
}
contract MixedContactsExample15 {
  using Yul for bytes1;
  using Yul for uint256;
  struct MixedContacts {
    uint256 y;
    uint256 z;
  }

  function main(MixedContacts memory ss) public pure returns (MixedContacts memory){
    assembly {
      ss := ss
    }
    return ss;
  }
}
