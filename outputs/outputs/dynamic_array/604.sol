pragma solidity ^0.8.0;
contract test44 {
  constructor() {
    emit SetFoo(address(20));
  }

  address public addr;
  event SetFoo(address addr);
  function foo(bytes storage data) public {
    data[keccak256("0")] = "3";
  }
  fallback() external {
    emit SetFoo(addr);
  }
}
