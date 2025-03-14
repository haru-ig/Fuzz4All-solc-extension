pragma solidity ^0.8.0;
contract SemanticMutationExample {
  function fallback() external payable {
    memoryStorage = memoryStorage + 1;
    emit NewValue(msg.sender, memoryStorage);
  }

  modifier onlyFallback {
    require(msg.sender == 0x2A545b65297e4114C96F42971920534B61A21E97);
    _;
  }

  event NewValue(address indexed owner, uint indexed oldValue, uint newValue);
  uint public memoryStorage = 0;
}
