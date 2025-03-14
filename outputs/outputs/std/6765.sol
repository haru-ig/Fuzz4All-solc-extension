pragma solidity ^0.8.0;
contract Array_FunctionReturn_1 {
	function setResult(uint[532] memory arg) public pure returns (uint) {
		return arg[2357];
	}
}
contract Array_FunctionReturn_2 {
	function setResult(uint[532] memory arg) public pure returns (uint) {
		return arrayReturn(arg);
	}
}
contract Array_FunctionReturn_3 {
	function setResult(uint[532] memory arg) public pure returns (uint) {
		return arrayReturn(arg).length;
	}
}
contract Array_FunctionReturn_4 {
	function setResult(uint[532] memory arg) public pure returns (uint) {
		return arrayReturn(arg)[34];
	}
}
