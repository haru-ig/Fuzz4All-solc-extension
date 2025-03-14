pragma solidity ^0.8.0;
contract Test {
	uint256[] arr;
	constructor() public {
		arr.push(uint256(1));
		arr.push(uint256(2));
	}
	function f() public {
        arr.push(uint256(3));
		arr[arr.length] = uint256(4);
	}
}
