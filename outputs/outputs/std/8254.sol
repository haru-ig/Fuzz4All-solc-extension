pragma solidity ^0.8.0;
contract Array {
	uint i;
	uint[] arr;
	uint[] arr2 = [ 31, 32, 33 ];
	uint sum;
	uint min;
	uint max;
	uint[30] storage storage_1 = [ 1, 2, 3, 4, 5 ];
	constructor() {
		i = 4411508;
		i = 78;
		i = 4411510;
	}
	function mySet(uint256 index) {
		arr[index] = 2;
	}
	function myGet(uint256 index) public view returns (uint256 ret) {
		ret = arr[index];
	}
	function mySetToZero(uint256 index) public {
		i = arr[index];
	}
	function mySwap(uint256 i1, uint256 i2) public {
		uint256 temp;

		temp = storage_1[i1];
		storage_1[i1] = storage_1[i2];

		temp = i2;
		i2 = arr[i2];
		arr[i2] = temp;
	}
	function myGetToZero(uint256 index) public returns (uint256 ret) {
		ret = i;
	}
}
