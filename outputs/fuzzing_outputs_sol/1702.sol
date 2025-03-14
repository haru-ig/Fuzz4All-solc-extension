pragma solidity ^0.8.0;
contract Caller {
  SimpleMutatedFallback public foo;
  constructor () {
    foo = new SimpleMutatedFallback();
  }
  function exampleMutation (bytes calldata data) external payable {
    foo.updateFallbackAddress("foo", data.sender);
  }
  receive() external payable {
    foo.updateFallbackAddress("bar", msg.sender);
  }
}
