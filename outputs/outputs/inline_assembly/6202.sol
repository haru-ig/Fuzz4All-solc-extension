pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedContactsExample {
  struct MixedContacts {
      uint256 _x;
      uint _y;
  }
  function main(MixedContacts memory x) public pure returns (uint) {
    uint256 _x = 3/x._x;
    return (_x+3-(_x-1)-2);
  }
}
