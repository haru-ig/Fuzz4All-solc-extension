pragma solidity ^0.8.0;
contract A is A {
	uint public x = 1;
}
contract X {
	function f() public pure {
		return 32;
	}
}
contract A {
	uint x = f[32];
}
contract S is X {
	function f()
	public
	pure
	returns(uint)
	{
		return 32;
	}
}
