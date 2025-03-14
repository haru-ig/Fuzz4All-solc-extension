pragma solidity ^0.8.0;
contract FallbackReceiver is Receivable
{
	function fallback() external override payable returns(uint) {
		address[] memory _callers = new address[](1);
		_callers[0] = msg.sender;
		return _fallback(_callers);
	}
	function _fallback(address[] memory _callers) public pure returns(uint) {
		uint result =  0;
		for (address caller : _callers)
        	require(caller.call{value:1 ether}());
        return result;
	}
}
