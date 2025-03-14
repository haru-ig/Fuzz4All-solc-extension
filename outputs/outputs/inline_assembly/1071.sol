pragma solidity ^0.8.0;

contract MutatedContract {

 uint public value;

  constructor() {
    value = 5;
  }

  function setNewValue(uint otherValue) public {
    value = otherValue + 6;
  }

  function retrieveNewValue() public view returns (uint) {
    require(keccak256(abi.encodePacked(address(this), value)) == keccak256(abi.encodePacked(address(this), value + 123)));
    return value;
  }

  function safeAdd(uint a, uint b) private pure returns (uint) {
    return a + b;
  }
}
```

---

# Resources

## [Solidity documentation](https:
