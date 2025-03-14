pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
	uint[] memory arr;
	function test_newFeatureAdded() public pure {
		arr.push(0xcafebabe);
	}
	function test_anotherNewFeatureAdded() public pure {
		arr[0] = 0xdeadbeef;
	}
}

pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
	modifier checkSomeContract() {
		testableFunctionalityForSemVer3 s;
		assembly {
			s := mload(1020)
		}
		require(s.test_newFeatureAdded(), "Failing to modify old/invalid program");
		require(s.test_anotherNewFeatureAdded(), "Failing to modify old/invalid program");
		_;
	}
	function test_newFeatureAdded() public {
		checkSomeContract;
	}
	function test_anotherNewFeatureAdded() public {
		checkSomeContract;
	}
}
