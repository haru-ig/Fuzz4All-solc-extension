pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedClass {
  function foo() private {
    x = 45;
  }
  uint constant x = 100;
  (uint x,) = assembly { bar() := 120 };
}
contract MutatedClass {
  function foo() private {
    (uint x,) = assembly {}.bar() := 120;
    x = 100;
  }
}
contract MutatedClass {
  (uint x,) = assembly { bar() := _x };
  function foo() private {
    uint x = 100;
    assembly { bar() := x } := _x;
    x = 120;
  }
}
