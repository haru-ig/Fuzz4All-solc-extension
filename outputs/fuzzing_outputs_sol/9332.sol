pragma solidity ^0.8.0;
contract MutatingFallback {
  bool public result;
  function modify(uint num) public {
    result = num + 1 > 2;
  }
}

contract CreateAddress {
  function createAddress(address addr) public { }
}
