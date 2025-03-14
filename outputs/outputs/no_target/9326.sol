pragma solidity ^0.8.0;
contract semanticallyEquiv29
{
	struct S {
		uint fieldA;

		uint internal fieldB;

		uint public internal fieldC;
	}
}
contract semanticallyEquiv30
{
	struct S2
	{
		uint fieldA;

		uint internal fieldB;

		uint public internal fieldC;
	}

	function semanticallyEquiv30_1(S memory s) public pure {
	}
}
contract semanticallyEquiv31
{
	struct {
		uint A;
		uint B;
	} S;

	uint256 internal fieldC;

	function semanticallyEquiv31_1() public pure
		(uint256 internal fieldD, uint256 internal fieldE)
	{
		uint256 internal temp = fieldC;

		S memory self;
		self.B = 1;
		S memory oop = self;
		oop.A = 1;
		oop.fieldA = S.A;
	}
}
contract semanticallyEquiv32
{
	struct { uint A; uint B; } S;
	uint256 internal fieldC;

	function semanticallyEquiv32_1(uint256 internal field) public pure {
	}
}
struct S3
{
	uint internal fieldA;
}
contract semanticallyEquiv33
{
	struct S4
	{
		uint internal fieldA;
	}

	require(abi.encode(S4).length == 32);
	address internal fieldB;

	function semanticallyEquiv33_1() public pure {
	}
}
contract semanticallyEquiv34
{
	uint internal fieldA;

	function semanticallyEquiv34_1() public pure {
	}
}
contract semanticallyEquiv35
{
	function semanticallyEquiv35_1(uint256 a) public pure
	{
	}

	function semanticallyEquiv35_2(uint256 a) public pure
	{
	}

	function semanticallyEquiv35_3
