pragma solidity ^0.8.0;
contract Caller {
    address payable fallback;

    enum States {Caller, Fallback}
    States state;

    constructor(States initial) {
      state = initial;
      emit StatesChanged(state);
    }

    receive() external payable {
      emit CallerEthTransfer(msg.sender, msg.value);
    }

    function toggle() public view {
      if (state == States.Caller) {
        fallback = payable(fallback().transferEther.fallback(msg.data));
      } else {
        fallback = payable(fallback(msg.data));
      }
    }
}
