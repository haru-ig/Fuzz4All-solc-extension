pragma solidity ^0.8.0;
contract MyContract {
  emit MyEvent();

  function MyFunction() external {}
}
contract MyContract {
  receive() public payable {}
}
contract MyContract {
  emit MyEvent();

  constructor() external {}
  fallback() external payable {}
}
contract MyContract {
  constructor() public {
    emit MyEvent();
  }
  fallback() payable external {}
}
