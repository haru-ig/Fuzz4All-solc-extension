pragma solidity ^0.8.0;
contract E {
  string message;
  fallback() external payable {
    message += "fallback";
  }
}
contract F {
  function test() public {
    uint amount = 1 ether;
    D d = new D();
    d.call.value(amount)("");
  }
}
