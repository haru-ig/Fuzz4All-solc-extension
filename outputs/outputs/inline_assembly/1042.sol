pragma solidity ^0.8.0;
contract MyContract {
  using MyLibrary for uint;
  event MyEvent(uint indexed a);
  uint internal constant SOME_CONST = 2323232323;
  uint internal SOME_CONST2;
  function myGetSome() public {
    emit MyEvent(SOME_CONST);
  }
}
```
