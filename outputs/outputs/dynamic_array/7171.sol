pragma solidity ^0.8.0;
contract Mutated {
	uint256[] arr;
	constructor() public {
		arr[1] = arr[0];
        emit LogEvent(arr);
		arr[0] = uint256(10);
	}
	event LogEvent (uint256[] arr);
}
