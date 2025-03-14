pragma solidity ^0.8.0;
contract BadCalled {
  address addr;
  mapping(uint => uint) state;
  fallback() external {
    (, uint) = abi.decode(msg.data, (uint, uint));
    addr = msg.sender;
    uint value = state[i] + 1;
    state[i] = value;
  }
}
