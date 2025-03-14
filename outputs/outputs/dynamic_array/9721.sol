pragma solidity ^0.8.0;
contract SemanticallyEquiv {



  struct MyStruct {
    address public address_;
    bytes2 public data_;
  }
  modifier semEq {
    SemanticallyEquiv semanticallyEquiv = SemanticallyEquiv(address(this));
    emit semEq(semanticallyEquiv);
    return;
  }
}

contract SemanticallyEquiv {
    uint128[1] public semanticallyEquiv;
}
```
