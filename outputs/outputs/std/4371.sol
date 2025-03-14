pragma solidity ^0.8.0;
contract EquivalentMutation
	{
	function EquivalentMutationAddress(uint a, uint b) public
	{
		(uint c, uint d) = (a, b);
	   a -= b;
	}
	}
contract Mutate
	{
		string a;
		function Mutate()
		{
			(uint v, uint w, uint x) = (1, 2, 3);
			seta(v - w - x);

		}
		function seta(uint var)
		{
			a = VarToString(var);
		}
		function VarToString(uint val)
			public pure
				returns (string memory)
			{
				return (val > 1));
			}
		}
