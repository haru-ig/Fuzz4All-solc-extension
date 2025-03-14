pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample12 {
  struct MixedContacts {
      uint256 x;
      uint256 y;
  }
  function main(MixedContacts memory s)
  public pure returns (MixedContacts memory){
    s.x + s.y;
    return s;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample13 {
  uint256[3] numbers = [1, -1, 6];
  MixedContacts memory contact1;
  MixedContacts memory contact2;
  MixedContacts memory contacts;
  function main() public returns (MixedContacts memory){
    contact1 = MixedContacts(numbers[0]);
    contact2 = MixedContacts(numbers[1]);
    contacts = contact1 + contact2;
    return contact1;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample14 {
  uint256[3] numbers = [1, -1, 6];
  MixedContacts memory contacts = MixedContacts(numbers);
  function main() public returns (MixedContacts memory){

    contacts.x;
    return contacts;
  }
}
contract MixedContactsExample15 {
  uint256 memory numbers;
  MixedContacts memory contact;
  function main() public returns (MixedContacts memory){

    contact = MixedContacts(numbers);
    return contact;
  }
}
