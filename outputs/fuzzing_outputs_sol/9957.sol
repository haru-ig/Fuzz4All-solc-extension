pragma solidity ^0.8.0;
contract FallbackReceiver {
    enum States {Fallback}
    event StateChanged(States state);
    States state;
    receive() external {
      emit StateChanged(state);
    }
    fallback() external {
      emit StateChanged(state);
    }
}
