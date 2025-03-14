pragma solidity ^0.8.0;
contract Caller {
    enum States {Caller, StateOne, StateTwo}
    enum Errors {Success, Error}
    event EthTransferReceiver(address who, uint amount);
    Emitter emit = new Emitter();

    function method() public payable returns (errors) {
        switch (state) {
          case States.StateOne:
          case States.StateTwo:
            return Errors.Success;
          default:
            state = States.Caller;
        }
    }

    fallback() external payable {
        emit.ethTransferReceiver(msg.sender, msg.value);
    }

    receive() external payable {
      if (state == States.StateOne ||
        state == States.StateTwo) {
        emit.ethTransferReceiver(msg.sender, msg.value);
      }
    }

    Emitter() private {}
    States private state;

}
