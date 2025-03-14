pragma solidity ^0.8.0;
contract MutatedCaller is Caller {
  uint256 c;
  uint256 d;
  constructor() {
    address me = hex"dead";
    (
      me,
      uint256 c2,
      uint256 d2,
    ) = abi.decode(msg.data, (uint256,uint256,uint256));
    c = c2;
    d = d2;
  }
  function foo() public view returns (uint256) {
    require(c + d > 10, "Caller.foo must be called with valid arguments");
    return c + d;
  }
}
