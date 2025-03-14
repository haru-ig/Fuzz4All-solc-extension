pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  constructor() public {
    MixedContacts memory s = MixedContacts(10, 20);
  }
  function main() public pure returns (MixedContacts memory){
    return s;
  }
}
contract MixedContactsExample8 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    s = MixedContacts(10, 20);
    return s;
  }
}

```
