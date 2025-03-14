pragma solidity ^0.8.0;
contract Caller {
  address public callee;
  function setCallee() public {
    callee = msg.sender;
  }
  Receive public receive;
  function setReceive(Receive calldata rec) public {
    receive = rec;
  }
  function call() public payable {
    receive.receive.value(msg.value)();
  }
}

contract Receive is Caller {


  mutator Mutator storage mutator;


  Receive storeReceive;
  function setMutator(Mutator memory m) public {
    muator = m;
  }
  function setReceive(Receive calldata r) public {

    storeReceive = r;
  }
  receive() external payable {
    if(address(mutator) == msg.sender) {
      mutator.increment();
    } else {
      storeReceive.receive.value(msg.value)();
    }
  }
}
