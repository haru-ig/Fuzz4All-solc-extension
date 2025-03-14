pragma solidity ^0.8.0;

contract Test
	{
	function foo(MyData data) pure public returns(uint, uint)
	{
	   MyData memory m = data;
	   return(m.data, m.datax);
    }
}
