pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample39 {
  uint constant public value = 42;
  uint constant public constant = 233;
  uint public constant var = value + constant;
  uint public var1;
  modifier publicMyModifier() {
        require(var1 == value, "Failed.");
        _;
  }
  function increaseByTen(uint d) publicMyModifier() public {
        var1 = var1 + d;
  }
}
