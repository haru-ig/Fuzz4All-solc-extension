pragma solidity ^0.8.0;
contract MyContract {
  bool b3 = true;

  event ChangeToFalse(uint x);

  modifier False {
    require(b3!= false,"AssertionFailed");
    b3 = false;
    _;
  }
  function bar() public False {
    b3 = false;
  }
}
```
