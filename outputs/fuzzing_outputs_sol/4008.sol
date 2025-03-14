pragma solidity ^0.8.0;
contract Caller {
	function getReturnValue() {
	  function g() pure returns (uint a) { a = 1; return a; }
	  assembly { let result := g() }
	  require(result == 1);
	}
}
