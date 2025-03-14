pragma solidity ^0.8.0;
contract Array2Imm {
	uint256 two;
	uint8 val;
	function setVal(uint8 val_) public {
		val = val_;
	}
	function printVal() public pure returns (uint8) {

		return val.touint8();
	}
}

pragma solidity ^0.8.0;
contract Array2Fun {
	uint256 two;
	mapping (bytes32 => uint256) public arr;
	function set2(bytes32 key) public {
		if (arr[key] == 0) {
			uint newArr = arr[key] + 1;
			mapping3[msg.sender][key] = newArr;
		}
	}
	function get2(bytes32 key) public view returns (uint256) {
		return mapping3[msg.sender][key];
	}
}

pragma solidity ^0.8.0;
contract Array3Fun {
	uint256 two;
	mapping (bytes32 => uint256) public arr;
	modifier onlyKey(bytes32 key) {
		if (msg.sender!= arr[key]) revert("Array3_fail");
		_;
	}
	function get2(bytes32 key) public view returns (uint256) {
		if (key!= "zero") revert("Array3_fail");
		return 0;
	}
	function set2(bytes32 key) public onlyKey(key) {
		arr[key] = arr[key] + 1;
	}
}
