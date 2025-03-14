pragma solidity ^0.8.0;
contract Mutant {
  event Log(bytes32 key, uint value);
  fallback() external payable {
    uint v = uint(msg.data[32]);
    emit Log(<KEY>, v);
    return;
  }
}
