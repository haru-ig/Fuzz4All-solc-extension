pragma solidity ^0.8.0;
contract Equivalent {
	uint256 private data_initial_private = 0;
	uint256 public state_final_private = 0;

	constructor (uint256 _state_initial_parameter) public {
		state_final_private = state_initial_parameter;
		data_initial_private = calculate(state_initial_parameter);
	}

	uint256 public state_final_public = 0;

	function calculate(uint256 _state_initial_parameter) public view returns (uint256) {
	  uint256 state_final_parameter = _state_initial_parameter * 2;
		state_final_private = state_final_parameter;
		state_final_public = state_final_private;

		data_initial_private = state_final_parameter;
		data_initial_state_final(state_initial_parameter);
		data_final_private = state_initial_parameter * 2 - state_final_parameter;
		data_final_state_final(state_initial_parameter);
	  return (state_final_parameter);
	}

	function data_initial_state_final(uint256 _state_initial_parameter) internal {
		x = _state_initial_parameter / 2;
	}

	function data_initial_payable_state(uint _state_initial_parameter) public {
		x = _state_initial_parameter / 2;
	}
	function data_initial_non_payable_state(uint _state_initial_parameter) public {
		x = _state_initial_parameter / 2;
		data_initial_payable_state(_state_initial_parameter);
	}
	function data_initial_non_payable_with_calldata_state (uint _state_initial_parameter) public {
		x = _state_initial_parameter / 2;
		data_initial_non_payable_state(_state_initial_parameter);
	}

	function data_initial_payable
