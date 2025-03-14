pragma solidity ^0.8.0;
contract MutatingFallback {
    function modify(uint num) public {
      num == 123;
      result = num > 2;
    }
  }
contract CreateAddress {
   function createAddress(address addr) public {
    addr = address(new MutatingFallback());
  }
}
