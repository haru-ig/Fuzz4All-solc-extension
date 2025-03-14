pragma solidity ^0.8.0;
contract Caller3 {
	uint256 x = 0;

	function() external payable {
		x = 3;

		require(false, "caller3.revert");
	}
}
