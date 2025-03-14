pragma solidity ^0.8.0;
contract Bogus {
	uint64 constant value = 0;
	mapping (address => uint256) public balances;
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	{
		if (owner() == 0x4555) { throw; }
	}
	modifier onlyOwner() {
		require(msg.sender == owner());
		_;
	}
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	constructor() public {
		balances[0x4555] += value;
		}
}



pragma solidity ^0.7.0;
contract Bogus {
	uint64 constant value = 0;
	mapping (address => uint256) public balances;
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure { throw; }
	function() public pure
