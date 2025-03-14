pragma solidity ^0.8.0;
contract ContractWithFallbackAndReceive {
  function receiveMsg() public payable {
    modify(msg.value);
  }
}
