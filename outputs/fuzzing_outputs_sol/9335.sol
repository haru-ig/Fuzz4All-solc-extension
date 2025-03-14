pragma solidity ^0.8.0;
contract MutatingFallback {
  function modify(uint num) public pure {
    if (num == 1) {
      revert("Invalid number");
      result++;
    } else {
      result = true;
    }
  }
  bool result;
}
contract CreateAddress {
  function createAddress(address addr) public payable {
    uint num;
    (bool success, ) = addr.call{value: msg.value}("(0x10000).add(result.add(num))");
    require(success, "Error");
  }
}
