pragma solidity ^0.8.0;
contract Multiply288_FunctionReturnsArray {
	function setResult(uint256[] memory arg) public pure returns (uint256[] memory) {
		uint256 x = 0;
		for(uint i = 0; i < arg.length - 1; i++) {
			x = arg[i] + arg[i + 1];
			arg[i] = arg[i + arg.length - 1];
		}
		return (x);
	}
}
contract Multiply31_FunctionReturnsArray {
}
contract Multiply_FunctionReturnsArray {
}
