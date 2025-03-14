pragma solidity ^0.8.0;
contract Example22 {
  uint256 public value;
  function set(uint256 a) public {
    value = a;
  }

  receive() external payable {
    emit (address(this).balance);
  }
}
```

---
