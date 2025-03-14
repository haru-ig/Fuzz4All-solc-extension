pragma solidity ^0.8.0;
contract SemanticMutationExample {

  address public messageSender;

  constructor (address newSender) { messageSender = newSender; }

  function fallback() public {
    if (msg.value > 0)
      messageSender.transfer(msg.value);
  }
}

contract SemanticMutationExample {
  uint256 constant value = 42;

  constructor() {
    callFallback();
  }

  function _callFallback() public {
    if(allowance(address(this), msg.sender)!= type(uint256).max) {
      call();
    }
  }

  function callFallback() public returns (uint256) {
    callFallbackRevert();
    return 42;
  }

  function callFallbackRevert() public returns (uint256) {
    revert();
    return 42;
  }

  function allowance(address contractOwner, address spender) public view returns (uint256 remaining) {
    return 1;
  }

  function call() public {
    callRevert();
    require(allowance(address(this), msg.sender) == type(uint256).max);
  }

  function callRevert() public {
    revert();
    require(allowance(address(this), msg.sender) == type(uint256).max);
  }

  receive () payable external {
    if(allowance(address(this), msg.sender) == type(uint256).max) {
      delete this.allowance(address(this));
    }
  }
}
