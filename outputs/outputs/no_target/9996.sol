pragma solidity ^0.8.0;
contract testableFunctionalityForSemVer3 {
	uint public a = 10;
	uint256 public b = 5;
	uint public c;
	uint256 public d;
}
contract testableFunctionalityForSemVer3 {
	function test_removeNewFeatureAndAllowExplicitConversionFromNegativeLiteralToTypeZeroToZeroOneWithCorrectType() public {
		testableFunctionalityForSemVer3 tfsf = new testableFunctionalityForSemVer3();
		tfsf.a = -10;
		tfsf.b = 5;
		tfsf.c = -1;
		tfsf.d = 5;
	}
}
