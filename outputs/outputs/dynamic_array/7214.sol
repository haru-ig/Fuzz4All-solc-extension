pragma solidity ^0.8.0;
contract Modded {
	constructor(uint x, uint y) public {}
	function f(uint x) public pure returns (int) { return 42; }
}

pragma solidity ^0.8.0;
contract Modded {
	constructor(function(uint) public) public {}
	function f(uint x, uint y) public pure returns (bytes memory) { return abi.encode(encode()); }
	struct encode {
		function() public pure returns (bool) { return false; }
	}
}
contract Modded {
	constructor() public {}
	function f(bytes memory buf) public pure returns (int) { return buf.length; }
}
