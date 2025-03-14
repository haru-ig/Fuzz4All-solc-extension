pragma solidity ^0.8.0;
library Library1
{
        function a() returns (bool, uint256)
        {
        	return (false,1);
        }
}
contract Caller
{
  function callContract() public returns (uint256 returnValue)
  {
  	uint256 test;
  	address fallback = address(Library1.a.selector);
  	Fallback2 test2 = Fallback2(address(Library1.a));
	uint256 result;
  	if (test2.a.call(fallback))
  	{
  		result = test;
  	}
  }
}
