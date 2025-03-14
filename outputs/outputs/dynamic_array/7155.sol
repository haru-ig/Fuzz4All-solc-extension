pragma solidity ^0.8.0;
contract Test {
	uint256[] internal arr;
	constructor() {
		arr.push(uint256(1));
        for (uint256 i = 1; i < 10; i++) {
			arr.push(uint256(2));
		}
	}
	function f() public {
		for (uint256 i = 1; i < 10; i++) {
			uint256[] memory tmp;
			tmp.push(uint256(1));
			tmp.push(uint256(1));
			for (uint256 j = 0; j < i; j++) {
				tmp.push(arr[j]);
			}
			tmp.length = 10;
			assert(tmp[9] == uint256(1));
			assert(tmp[9] == arr[9]);
			assert(tmp[9] == Test(address(this)).f());
		}
		for (uint256 i = 1; i < 10; i++) {
			assert(arr.length > i);
			assert(arr.length <= 10);
			assert(arr.length >= i);
			for (uint256 j = 0; j < i; j++) {
				assert(arr[j] == uint256(1));
			}
			arr.length = 14;
			for (uint256 j = 2; j < 10; j++) {
				assert(arr[j-1] <= arr[j]);
			}
			assert(arr[9] == uint256(1));
			assert(arr[9] == arr[9]);
			assert(arr[9] == Test(address(this)).f());
		}
	}
}
