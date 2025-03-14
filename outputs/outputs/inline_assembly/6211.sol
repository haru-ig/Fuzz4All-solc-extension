pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample2 {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x) public pure {
    x._x=0; x._y+=1; x._y-=2;
  }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory witness) public {
    witness._x*=2;
    witness._x-=1;
  }
}
