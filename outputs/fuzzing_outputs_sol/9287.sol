pragma solidity ^0.8.0;
contract MutatedSemanticFallback {
  address owner;

  function fallback() external payable {
    require(msg.data.length > 0);
    owner.transferEther(address(this).balance - msg.data.length);
  }
  constructor(address _owner) {
    owner = _owner;
  }
}
