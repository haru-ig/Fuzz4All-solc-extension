pragma solidity ^0.8.0;
contract Mutate161_Semantics_Semantic
{
	struct MyStruct
	{
		uint value;
	}

	function mutate_161() pure
	{
		MyStruct memory my_struct;
		my_struct.value = 12345;
	}

}
