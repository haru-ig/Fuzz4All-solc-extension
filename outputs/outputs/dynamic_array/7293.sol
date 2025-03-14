pragma solidity ^0.8.0;
interface CallDataAbiCompatibility
{
	function test() external;
	function getCallDataSize() public view returns (uint256);
}
