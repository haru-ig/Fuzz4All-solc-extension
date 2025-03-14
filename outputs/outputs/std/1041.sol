pragma solidity ^0.8.0;
contract ArrayMut32
{
	function array(uint256[4] memory _r) public pure {
		_r[2] = 0;
	}
}

pragma solidity ^0.8.0;

contract Call250
{
	uint256 a;

	modifier callonlyonce() {
		require(a == 0, "Call250: duplicate call");
		a = 0;
		_;
	}

	function f() public {
		callonlyonce();
	}
}
