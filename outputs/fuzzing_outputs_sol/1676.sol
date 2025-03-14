pragma solidity ^0.8.0;
interface MutatedReceiverImpl {
  function doSomething(uint256 _amount) external;
}
library MutatedFunctionsImpl {
  function functionToMutateCalls(
    MutatedReceiverImpl receiver,
    address target,
    uint256 _amount)
    public {
    try
    {
      receiver.doSomething(_amount);
    }
    catch { revert(); }
  }
}

contract ContractWithMutations {
  MutatedReceiverImpl private receiver;
  address public someAddress;


  constructor(address _receiver) {
    receiver = receiver(_receiver, msg.sender);
  }



  function doSomething(uint256 _amount) public {
    MutatedFunctionsImpl.functionToMutateCalls(
      receiver,
      msg.sender,
      _amount);
  }
  function receive() public payable {
    MutatedFunctionsImpl.functionToMutateCalls(
      receiver,
      msg.sender,
      msg.value);
  }
}
