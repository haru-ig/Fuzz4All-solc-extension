pragma solidity ^0.8.0;
contract Multiply15_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](5);
		for(uint i = 0; i < 5; i++) {
			result[i] *= arg[i];
		}
		return (result);
	}
}

pragma solidity ^0.8.0;
contract Multiply154_FunctionReturnsArray {
	function setResult(uint128[] memory arg) public pure returns (uint128[] memory) {
		for(uint i = 0; i < 10; i++) {
			arg[i] = 0;
			arg[i] += arg[i + arg.length];
		}
		arg[arg.length - 1] = arg[arg.length - 2] * 2;
		return (arg);
	}
}
