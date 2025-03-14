pragma solidity ^0.8.0;
contract Caller {
  function fallback(uint gas) external {
    (uint) (msg.value);
  }
}
