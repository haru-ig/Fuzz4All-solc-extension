pragma solidity ^0.8.0;
contract C
{
	uint8[3] myArray;
}
contract Test
{
	function test() public pure
	{
		C c = C();
		uint arrayLenght = c.myArray.length;
	}

}
