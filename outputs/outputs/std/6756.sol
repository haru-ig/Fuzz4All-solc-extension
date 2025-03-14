pragma solidity ^0.8.0;
contract Mutate60_FunctionReturnsArray {
	function mutate() public {
		uint[] memory r = getAndStore();

		r[2] = 1;
		r[3] = -2;
	}
}
