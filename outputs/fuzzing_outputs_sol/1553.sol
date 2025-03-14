pragma solidity ^0.8.0;
contract CallerExample {
  function makecall() external payable {
    MutatorExample o = MutatorExample(0x123);
    o.transfer;
  }
}
