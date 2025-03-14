pragma solidity ^0.8.0;
contract Old
	{
	contract Mutated
	{
	function ArrayAddress(uint a, uint b) public
	{
	   uint result = max(a, b);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   uint result = max(a, b) + a;
	}
	function max(uint a, uint b) public pure returns(uint) {
	   return a > b? a : b;
	   }
	}

pragma solidity ^0.8.0;
contract Original
	{
	function ArrayAddress(uint a, uint b) public
	{
	   uint result = min(a, b);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   uint result = max(a, b) + a;
	}
	function min(uint a, uint b) public pure returns(uint) {
	   return a > b? b : a;
	   }
	}

pragma solidity ^0.8.0;
contract New
	{
	contract NewMutated
	{
	function ArrayAddress(uint a, uint b) public
	{
	   uint result = min(a, b);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   uint result = max(a, b) + a;
	}
	function min(uint a, uint b) public pure returns(uint) {
	   return a > b? b : a;
	   }
	}
pragma solidity ^0.8.0;
contract OldNew
	{
	contract OldMutated
	{
	function ArrayAddress(uint a, uint b) public
	{
	   uint result = min(a, b);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   uint result = max(a, b) + a;
	}
	function min(uint a, uint b) public pure returns(uint) {
	   return a > b? b : a;
	   }
	}
contract NewOld
	{
	contract NewMutatedOld
	{
	function ArrayAddress(uint a, uint b) public
	{
	   uint result = min(a, b);
	}
	function MutatedAddress(uint a, uint b) public
	{
	   uint result = max(a, b) + a;
	}
	function min(uint a, uint b) public pure returns(uint) {
	   return a > b? b : a;
	   }
	}
