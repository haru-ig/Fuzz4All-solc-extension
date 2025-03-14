pragma solidity ^0.8.0;
contract Caller {
    enum States {Caller, Fallback}
    event CallerEthTransfer(address to, uint amount);
    event StatesChanged(States state);
    States state;
    function toggle() public {
      if (state == States.Caller) {
        state = States.Fallback;
      } else {
        state = States.Caller;
      }
      emit StatesChanged(state);
    }
    fallback() external payable {
      emit CallerEthTransfer(msg.sender, msg.value);
    }
}
