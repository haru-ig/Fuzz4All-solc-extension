pragma solidity ^0.8.0;
library Array{
	struct ArrayStruct {
		uint256[] arr;
	}
 	function setArr(ArrayStruct storage _S, uint256[] memory _arr) public {
		_S.arr = _arr;
	}
	function getArr(ref ArrayStruct storage _S) public view returns (uint[]) {
		return _S.arr;
	}
}
