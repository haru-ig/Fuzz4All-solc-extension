pragma solidity ^0.8.0;
contract Mutations
{
  uint64 private counter_;
  event LogUint64(uint64 _counter);

  function mutate() public {
    counter_ += 1;
    LogUint64(counter_);
  }
}
