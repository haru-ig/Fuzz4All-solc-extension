pragma solidity ^0.8.0;
contract test57 {
	constructor(uint[] memory b) public {
	}

	contract test_contract{
		uint[] memory _d57;
		constructor(uint b) public {
			require(_d57.length > 1, "Array is too small");
		}
		function test() public returns (bytes4) {
			_d57.length = 42;
			return (keccak256(abi.encodePacked(_d57)));
		}
	}

	function test() public returns (bytes4) {
		test_contract tct;
		return tct.test();
	}

	function malicious() public{
		while (true) {
			test_contract tct;

		}
	}
}
