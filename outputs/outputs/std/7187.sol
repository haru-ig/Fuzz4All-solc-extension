pragma solidity ^0.8.0;
contract MutateXOR {
	function test() public pure {
	  uint a;
	  uint b;
	   a=0xffff;
	   a^=b;
	   a=0xff00;
	   a<<=8;
	   a^=b;
	   a=0xfe00;
	   a<<=8;
	   a^=b;
	}
}
