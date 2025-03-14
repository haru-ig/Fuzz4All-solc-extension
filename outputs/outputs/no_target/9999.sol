pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
		function test_featureUpdated() public {
		}
}

pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
		function test_oneMoreFeatureAdded() public pure returns (bool) {

			require(false);

			assert(true);
			return false;

			assert(false);
		}
}

pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
		function test_newGlobalFunctionAdded() public {
		}
		function test_anotherGlobalFunctionAdded() public {
		}
}
