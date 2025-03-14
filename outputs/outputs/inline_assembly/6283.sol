pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private z = 12;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts){
    ss := MixedContacts(ss);
    return ss;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample17 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private z = 12;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    assembly {
      ss := ss






    }
    return ss;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample18 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private z = 12;
  function main(MixedContacts memory ss)
  public pure returns (MixedContacts memory){
    ss := ss;
    return ss;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample19 {
  struct MixedContacts {
      uint256 y;
      uint256 z;
  }
  uint256 private z;
  MixedContacts private ss;

  function set()
  external
  returns (MixedContacts memory){
    z = 12;
    ss = MixedContacts({y: 12, z: 20});
    return ss;
  }
}
