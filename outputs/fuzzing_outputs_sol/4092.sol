pragma solidity ^0.8.0;
contract Fallback {
  receive() external {}
}

pragma solidity ^0.8.0;
contract Fallback {
  event SayHello();

  function test() public payable returns (uint) {}

  receive() external payable {}

  fallback() external payable {}
}
