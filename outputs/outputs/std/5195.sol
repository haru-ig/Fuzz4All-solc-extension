pragma solidity ^0.8.0;
contract OriginalMutaation {
	Mutated mutated;
	constructor() {
		mutated = Mutated({
			data: bytes32(keccak256(abi.encodePacked(1)))
		});
	}

	function mutate1() public {
		bytes32 c;
		bytes32 memory c2;
		bytes32 memory c3;
		uint j;
		for (uint i=0;i<10;i++) {
			(c, c2, c3) = mutated.mutated.keccak(abi.encodeWithPrefix("A"));
			j = uint(c) + uint(c2) + uint(c3);
		}
	}
}
