pragma solidity ^0.8.0;
contract Mutability8 {
  uint public constant ZERO = 0;
  struct State {
    uint value;
  }
  state.State private _state;
  constructor () public {
    _state = state(ZERO);
  }
  function setValue (uint _value) public returns (bool) {
    _state.value = ZERO;
    _state.value += _value;


    return true;
  }
}
