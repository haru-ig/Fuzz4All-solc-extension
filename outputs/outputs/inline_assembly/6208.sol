pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample2{
  function main() public pure returns (uint) {
      MixedContacts memory x;
      return (uint) (3 * x.x + x.y + x.y + 2 / x.y);
  }
}
