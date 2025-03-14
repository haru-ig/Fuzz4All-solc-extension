pragma solidity ^0.8.0;
contract MutationImpl {
  function test() public payable {
    address addr = msg.sender;
    func(address);
    addr.delegatecall(abi.encodeWithSelector(MutatedFallbackImpl.receive.selector));
  }
  function func(address addr) external payable {
    addr.delegatecall(abi.encodeWithSelector(MutationImpl.test.selector));
  }
}
