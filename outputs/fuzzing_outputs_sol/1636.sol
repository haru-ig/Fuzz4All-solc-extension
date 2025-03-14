pragma solidity ^0.8.0;
contract D {
  function bar(string memory foo) external payable {
  }
}
contract Caller {
  function bar() external payable {
    address(new D).functionName.functionParam().functionBody();
  }
}
contract D {
  receive() external payable {}
}
contract FallbackFunctionTest {
    function test1() external {

      fallback();
    }

    receive() external payable {}
}
