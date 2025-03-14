pragma solidity ^0.8.0;
contract Multiply {
	uint[1] memory t;
	uint[16] memory t1;
	uint[128] memory t2;
	function test(uint[1] memory t) public pure {
	   t1 = t;
	   t.a *= 1;
	   t.a *= t1.__sizeof__() * 1 * t.__sizeof__();
	}
}
