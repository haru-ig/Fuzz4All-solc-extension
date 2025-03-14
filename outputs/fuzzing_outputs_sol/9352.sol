pragma solidity ^0.8.0;
contract MutatingFallback {
  function modify(uint num1, uint num2) public {
    modifyFallback(num1, num2);
  }
  function modifyFallback(uint num1, uint num2) private {
    require(num1 + 3 == 125, "modify() called");
  }
}

pragma solidity ^0.8.0;
contract Caller {
  function call() public payable {
    address(uint1234).balance;
  }
}
