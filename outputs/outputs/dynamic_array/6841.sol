pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
	enum E { A }

	function f() public pure returns (E memory) {
		E memory m = E.A;
		return m;
	}
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics3 {
	struct InnerStruct {
		uint24 array;
	}

	struct OuterStruct {
		InnerStruct inner;
	}

	struct E {
		OuterStruct structMem;
	}

	function f(E memory m, uint24 x) public returns (uint24[] memory) {
		x = m.structMem.inner.array + x;
		return new uint24[](1);
	}
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics2 {
	enum E { A }

	struct OuterStruct {
		uint24 array;
		E memory enumMem;
	}

 		constructor(uint24 x) public {
		OuterStruct memory mem = OuterStruct(x, E(E.A));
	}

	function f(OuterStruct memory mem, uint24 x) public returns (uint24) {

		x = int(mem.enumMem) + x;

		uint24[] memory array = f2(mem.array);
		x = x + getArraySum2(array[0]);
		return x;
	}

	uint24[] internal function f2(uint24 y) internal pure returns (uint24[]) {
		return new uint24[](0);
	}

	function getArraySum2(uint24 x) internal pure returns (uint24) {
		x = x + 1;
		return x;
	}
}
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics1 {
	enum E { A }

	struct OuterStruct {
		E[] memory array;
		uint256 data;
	}

	struct E {
		uint24 data;
