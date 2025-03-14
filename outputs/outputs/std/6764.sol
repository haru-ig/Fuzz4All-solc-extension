pragma solidity ^0.8.0;
contract Multiply156_FunctionReturnsArray {
	function setResult(uint256[] memory arg) public pure returns (uint256[] memory) {
		for(uint i = 0; i < 10; i++) {
			arg[i] = arg[i] * 2;
		}
		arg[arg.length - 1] = arg[arg.length - 2];
		return (arg);
	}
}
contract Multiply157_FunctionReturnsArray {
	function setResult(uint256 arg) public pure returns (uint256) {
		uint256 local1 = arg;
		local1 *= 2;
		return (local1);
	}
}
contract Multiply14_FunctionReturnsArray {
	function setResult(uint256[] memory arg) public pure returns (uint256[] memory) {
		for(uint i = 0; i < 4; i++) {
			arg[i] *= 2;
		}
		return (arg);
	}
}
contract Sqrt15_FunctionReturnsArray {
	function setResult(uint[] memory arg) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](5);
		for(uint i = 0; i < 5; i++) {
			result[i] = uint(sqrt(arg[i]));
		}
		return (result);
	}
}
contract Add74_FunctionReturnsArray {
	function setResult(uint[] memory a) public pure returns (uint[] memory) {
		uint[] memory result = new uint[](a.length);
		for(uint i = 0; i < a.length; i++) {
			result[i] = a[i] + 3;
		}
		return (result);
	}
}
contract Multiply20_FunctionReturnsArray {
	function setResult(uint128[] memory a) public pure returns (uint128[] memory) {
		for(uint i = 0; i < 5; i++) {
			a[i] *= (a[i] + 3);
		}
		return (a
