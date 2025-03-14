pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample16 {
  struct MixedContacts {
      uint256 y;
  }
  function main(MixedContacts memory ss, uint256 x)
   public view returns (MixedContacts memory oo)
   {
    oo.y = x;
    oo.z = x;
    return oo;
  }
}
