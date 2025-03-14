pragma solidity ^0.8.0;
contract SemanticallyEquivalent19 {
  uint256 public total;
  function foo() public {
    total = total + 1;
    emit log(total);
  }
  function bar() public {
    total = total + add(1,1);
  }
  function baz() public {
    total = total - add(1,1);
    emit log(total);
  }
  function log(uint256 val) public {
    assembly { log(val, 0, 0) } }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalent20 {
  uint256 total;
  function foo() public {
    total = total + add(1,1);
    emit log(total);
  }
  function bar() public {
    total = total + 1;
    emit log(total);
  }
  function baz() public {
    total = total + 1;
    emit log(total);
    emit log(total);
  }
  function log(uint256 val) public {
    total = total + val;
    emit log(val);
  }
  function log(uint256 val, uint256 val2, uint256 val3) public {
    emit log(val);
  }
}
