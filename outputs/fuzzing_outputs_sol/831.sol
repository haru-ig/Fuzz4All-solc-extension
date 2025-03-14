pragma solidity ^0.8.0;
contract BreadMilkExample {
    function foo() public pure {
      uint _a;
      uint _bout;
      _a = 42;
      _bout = BreadMilkExample.modify(_a);
      uint _c = _a + _bout + 1;
    }
}
