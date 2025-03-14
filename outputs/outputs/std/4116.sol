pragma solidity ^0.8.0;
contract Array3Const {
	uint256 constant three = 3;
	mapping (address=>uint256) mappingVal;
	mapping (address=>bool) mappingBool;
	function () public payable {}
}

contract Array1Const is Array2Const, Array3Const {}
