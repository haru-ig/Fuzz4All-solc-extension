pragma solidity ^0.8.0;
contract MyContract {
  function myGetSome() public {
    uint memory initValue = uint(MyLibrary.getSomeConst());
    initValue = SOME_CONST;
    SOME_CONST = SOME_CONST;
  }
}

```
