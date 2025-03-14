pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample10 {
  struct MixedContacts {
      uint256 _x;
      uint256 y;
  }
  function main(MixedContacts memory y)
    public pure return (MixedContacts memory) {
      y.y += 1;
      return y;
  }
}
contract MixedContactsExample10 {

    struct MixedContacts {
        uint256 _x;
        uint256 y;
    }
    function main(MixedContacts memory y)
        public pure return (MixedContacts memory) {
        uint256 x = 1;
        uint256 y = y.x;
        y.x = x;
        x = y.x;
        return y;
    }
}
