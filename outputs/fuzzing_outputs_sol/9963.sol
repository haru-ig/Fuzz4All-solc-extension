pragma solidity ^0.8.0;
contract Caller {
    enum States {Caller, Fallback}
    event CallerEtherTransfer(address to, address from, uint amount);
    function transfer(address _to, uint _value) public {
      address payable self = payable(this);
      emit CallerEtherTransfer(_to, address(self), _value);
      self.transfer(_value);
    }
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
}
