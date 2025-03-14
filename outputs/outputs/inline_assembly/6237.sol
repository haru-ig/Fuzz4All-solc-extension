pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample9 {
  struct MixedContacts {
    address _1;
  }

  function main(MixedContacts memory y)
  public {
      y._1 = MIXEDCONTACTADDRESS;
  }
}
