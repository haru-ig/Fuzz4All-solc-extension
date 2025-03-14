pragma solidity ^0.8.0;
contract ComputedAccount {
	uint[2] public nums = [1, 2];
	uint public array_length;

	void create(uint) public {
		array_length = nums[1] + 2;
	}
}
