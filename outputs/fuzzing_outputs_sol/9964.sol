pragma solidity ^0.8.0;
contract Fallback {
    enum States {Fallback, Caller}
    event FallbackStateChanged(States state);
    States state;
    constructor() {}
    function toggle() public {
      if (state == States.Fallback) {
        state = States.Caller;
      } else {
        state = States.Fallback;
      }
      emit FallbackStateChanged(state);
    }
}
