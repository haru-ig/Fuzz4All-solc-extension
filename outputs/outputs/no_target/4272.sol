pragma solidity ^0.8.0;
contract P4 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = foo;
    uint256 res = bar;
    uint256 wrong = 1 + 1;
    uint256 wrong2 = bar + 1;


    return res;
  }
}
pragma solidity ^0.8.0;
contract P5 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar;
    uint res = bar;

    return res;
  }
}
pragma solidity ^0.8.0;
contract P6 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = foo;
    uint res = bar;

    return res;
  }
}
pragma solidity ^0.8.0;
contract P7 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = (foo);
    uint res = bar;
    return res;
  }
}
pragma solidity ^0.8.0;
contract P8 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = (foo);
    uint res = bar;
    return res;
  }

  function bar(uint256 a) public returns (uint32) {
    uint foo = bar(bar(a));
    uint res = foo;

    return res;
  }
}
pragma solidity ^0.8.0;
contract P10 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = foo;
    uint res = bar;

    return res;
  }

  function bar() public returns (uint32) {
    uint foo = bar;
    uint res = foo;

    return res;
  }
}
pragma solidity ^0.8.0;
contract P12 {
  uint foo = 1 + 1;

  function foo() public returns (uint256) {
    uint bar = foo;
    uint res = bar;

    return res;
  }

  function bar(uint256 a) public returns (uint32) {
    uint foo = bar(bar
