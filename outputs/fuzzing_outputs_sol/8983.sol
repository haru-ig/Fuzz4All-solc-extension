pragma solidity ^0.8.0;
contract Receiver {
  receive () external {
    emit Event("Event", address(this));
  }
  function emitEvent (events.Event memory event_) public {
    emit event_(address(this));
  }
  function getData() external pure returns (uint) {
    return 1;
  }
}
