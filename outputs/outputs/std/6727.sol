pragma solidity ^0.8.0;
contract Mutate59_Original {
	struct IntPair {
		uint val1;
		int val2;

		constructor(uint _val1_, uint _val2_) {
			val1 = _val1_;
			val2 = _val2_;
		}

		function toUint() internal pure returns (uint, bytes1) {
			return (_val1, byte(0));
		}
	}

	IntPair muta
}

contract Mutate59 is Mutate59_Original, Mutate59_Semantics {}
