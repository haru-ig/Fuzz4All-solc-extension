pragma solidity ^0.8.0;
contract Receiver {
    enum States {Receiver, Fallback}
    event EthTransfer(address to, uint amount);
    function receive() public payable {
      emit EthTransfer(msg.sender, msg.value);
    }
    event StatesChanged(States state);
    States state;
    function toggle() public {
      if (state == States.Receiver) {
        state = States.Fallback;
      } else {
        state = States.Receiver;
      }
      emit StatesChanged(state);
    }
    fallback() external payable {
      emit EthTransfer(msg.sender, msg.value);
    }
}
