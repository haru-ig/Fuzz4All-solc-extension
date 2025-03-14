pragma solidity ^0.8.0;
contract Multiply30_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](3);
		for(uint i = 0; i < 3; i++) {
			for(uint j = 0; j < 3; j++) {
				result[i] *= arg[j];
			}
		}
		return (result);
	}
}
contract Multiply306_FunctionReturnsArray {
	function setResult(uint256[] memory arg) public pure returns (uint256[]) {
		for(uint i = 0; i < 10; i++) {
			arg[i] = 0;
			arg[i] += arg[i + arg.length];
		}
		for(uint i = 0; i < 3; i++) {
			for(uint j = 0; j < 3; j++) {
				for(uint k = 0; k < 3; k++) {
					arg[i] *= arg[i + k];
				}
			}
		}
		for(uint i = 0; i < 5; i++) {
			arg[i + arg.length] = arg[i];
		}
		uint256[3] memory temp = arg[3];
		arg[3] = arg[8];
		arg[8] = temp;
		return (arg);
	}
}
