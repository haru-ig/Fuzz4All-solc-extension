pragma solidity ^0.8.0;
contract Mutator {
  emit TestEvent("SimpleMutation");

  function mutate() external {
    fallback();
  }

  receive() external payable {
    fallback();
  }
}
