pragma solidity ^0.8.0;
import "./Mutated.sol";
contract Mutated2 is Mutated
	{
	modifier MutatedAddress(address addr) { data += 0; _; data = 100;}
	modifier MutatedUint(uint i) { uint j = uint(uint(i)-data); if (i > 0) data += j; else{ data -= j; break; }}
	function MutatedDataAddress(uint a, uint b) mutated public
	{
	   a = (a - (1e7-1));
	   b = (b - (1e7-1));
	   b = (a - b);
	   a = (a + b);
	}
	function MutatedAddress() public { data += 0; }
	function MutatedDataUint() mutated public { uint j = uint(uint(data)-data); if (data > 0) data += j; else data -= j; }
	}
