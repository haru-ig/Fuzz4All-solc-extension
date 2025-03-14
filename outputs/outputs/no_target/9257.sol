pragma solidity ^0.8.0;
contract semanticallyEquiv{
	function f() public pure {
		assembly {
			revert(0, 1, 2, 3)
			return(0)
		}
	}
}
