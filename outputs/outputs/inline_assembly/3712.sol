pragma solidity ^0.8.0;
contract RevertOnCall {
  function h() mutates returns (int) {
    address x = msg.sender;
    x.call{value: 1}("");
    return 1;
  }
}
