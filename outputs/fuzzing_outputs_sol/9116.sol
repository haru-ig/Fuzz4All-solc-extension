pragma solidity ^0.8.0;
contract BadCaller {
    function foo() external {
      msg.sender;
    }
    fallback() external { }
}
