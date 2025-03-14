pragma solidity ^0.8.0;
contract GasTest
	{
	uint data;
	constructor () public { data = 0;}
	function GasTest( uint a) public
	{
		data = a;
	}
	function f(uint my, uint num) public
	  {
	   data = my + 1 + 2 * num;
	 }
	}
	 function random_uint_300(uint n) public returns (uint num)
	 {


      num = 1 +  (uint(keccak256(blockhash(block.number - n))).mod(1919));

      for(uint i = 18 ; i >= 0 ; i--)
        {
         num *= 8;

        }
     if (num > 2147483647)
        {
         num -= 2147483648;
        }

     return num;
     }
	 contract MemoryTest
	{
	uint data;
	constructor() public { data = 0;}
	function MemoryTest3( uint a) public
	{
		data = a;

	}
	function f1() public
	  {
	   data = 1;
	 }
	function f2() public
	  {
	   data = 2;
	 }
	}
