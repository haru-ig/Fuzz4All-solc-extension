pragma solidity ^0.8.0;
contract Caller
{
	function call() internal returns (bytes memory)
	{
		address payable contractAddr = msg.sender;
		contractAddr.transfer(address(this).balance);
		return abi.encodeWithSignature("fallback()");
	}
}
