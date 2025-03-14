pragma solidity ^0.8.0;
contract MutateXOR {
	function test() public pure {
	  uint8 a;
	  uint8 b;
	   a=0xff;
	   a^=b;
	   a=0xf0;
	   a^=b;
	   a=0xe2;
	   a^=b;
	}
}
