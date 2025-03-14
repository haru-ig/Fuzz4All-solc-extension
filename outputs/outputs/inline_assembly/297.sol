pragma solidity ^0.8.0;
contract E10
{
	struct storage_t
	{
	    address s1;
		uint a;
		uint b;
	}

	storage_t t;

	function f() private
	{
	    emit s1_change(t.s1, t.a, t.b);
        t.a = t.a + 1;
	}

	event s1_change(address addr, uint a0, uint b0);
}
