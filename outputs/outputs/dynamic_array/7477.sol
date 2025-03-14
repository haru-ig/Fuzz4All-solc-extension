pragma solidity ^0.8.0;
contract Test51 {
	address owner;

	function f() public pure {
		uint a;
		assembly {

			a := 0x5A01
		}
		owner = a;
	}
}
