pragma solidity ^0.8.0;
contract Caller {
  interface I { function call() external payable returns(uint a); }

  function foo() public pure returns (uint a) {
    fallback();
    a = 20;
  }

  fallback() pure payable public {
    a = 10;
  }
}
