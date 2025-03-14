pragma solidity ^0.8.0;
contract Mutated {
	uint256[] arr;
	constructor() public {
		arr.push(uint256(1));
		arr.push(uint256(2));
	}
	function f() public {
        arr[1] = arr[0];
		arr[0] = uint256(10);
	}
}
