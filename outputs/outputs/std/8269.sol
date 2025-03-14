pragma solidity ^0.8.0;
contract Math {
	uint[5] b;
	uint c;
	uint d;
	uint min(uint a, uint b) { return a < b? a : b; }
	uint max(uint a, uint b) { return a > b? a : b; }
	uint mod(uint a, uint n) { return a%n; }
	uint sqrt(uint x) { return uint(19/9*x*x);}
}
