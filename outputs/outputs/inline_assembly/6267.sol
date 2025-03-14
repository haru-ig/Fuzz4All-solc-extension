pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct MixedContacts {
  uint256 x;
  uint256 y;
}
contract MixedContactsExample12 {
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    return s;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
struct MixedContacts {
  uint256 x;
  uint256 y;
}
contract MixedContactsExample11 {
  function main()
  public pure returns (MixedContacts memory){
    uint256 one = 0;
    MixedContacts memory t;
    t.x := one;
    return t;
  }
}
contract MixedContactsExample10 {


  function main() onlyOwner returns (address){
    uint256 one = 0;
    MixedContacts memory t;
    t.x := one;
    return owner();
  }

}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
 struct MixedContacts {
  uint256 x;
  uint256 y;
}
contract MixedContactsExample9 {
  function main() view public returns (MixedContacts memory){
    uint256 one = 0;
    MixedContacts memory t;
    t.x := one;
    return t;
  }
}
contract MixedContactsExample8 {
  struct MixedContacts {
    uint256 x;
    uint256 y;
    uint256 z;
  }

  function main() view public returns (MixedContacts memory){
    uint256 one = 0;
    uint256 two = 0;
    MixedContacts memory t;
    t.x := one;
    t.y := two;
    MixedContacts memory u;
    address memory r;
    assembly {
      r := mload(0x40)

      mstore(0x40, t)
      t := u
    }
    u.z := 0;
    return t;
  }

  constructor() {
    uint256 one = 0;
    MixedContacts memory t;
    t.x := one;
    t.y := one;
    address
