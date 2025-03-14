pragma solidity ^0.8.0;
contract Mutate59_Semantics {
	uint256 private _max;
	function mutator(uint256 value) internal view {
		if (value > _max) {
			_max = value;
		}
	}
	function mutated() internal view {
		require(max == _max, "invalid max");
	}
}
contract Mutate59_Semantics {
	uint256 private _min;
	function mutator(uint256 value) internal view {
		if (value < _min) {
			_min = value;
		}
	}
	function mutated() internal view {
		require(min == _min, "invalid min");
	}
}
