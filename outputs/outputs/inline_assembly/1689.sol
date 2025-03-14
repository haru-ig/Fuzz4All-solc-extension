pragma solidity ^0.8.0;
contract MutatorS4 {
	struct State {
		uint256 sum;
  	uint256 value;
	}
	uint256 const One = 1;
  State storage oldState;
  Modifier onlyFirstChange {
    if(oldState.sum == One) {
      oldState.sum = One;
      oldState.value++;
      emit Event(oldState.sum, oldState.value);
    }
    _;
  }
	event Event(uint256 sum, uint256 value);
	function mutate() public onlyFirstChange {
    oldState.sum = One;
    oldState.value++;
    emit Event(oldState.sum, oldState.value);
  }
}
