pragma solidity ^0.8.0;
contract Mutated2 {
	uint[] arr;
	constructor() public {
        arr.push(uint(10));
		arr.push(uint(20));
	}
	function f() public {

        arr[1] = arr[0];
        arr[0] = uint(10);
	}
}
