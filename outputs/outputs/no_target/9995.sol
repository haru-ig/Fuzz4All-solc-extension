pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer4 {
		struct foo {
			uint a;
			uint b;
		}

		constructor() {
		}

		function test_newFeatureAdded() public {
			foo memory v;
			v.a = a^b;
			v.b = b^a;
		}

		function test_anotherNewFeatureAdded() public {
			foo memory v;
			v.a = a^b;
			v.b = b^a;
		}
}
