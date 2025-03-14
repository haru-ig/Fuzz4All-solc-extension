pragma solidity ^0.8.0;
contract Test3 {
	uint[] arr;
	constructor() public {
		arr.push(uint(1));
		arr.push(uint(2));
	}
	function init() public {
        arr[0] = uint(10);
	}
}
