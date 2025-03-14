pragma solidity ^0.8.0;
contract Mutator
	{
	uint[5] public a,b;
	function Mutate(uint a_, uint b_) public
		{b = b_;
	   a = a_;
	}
}
