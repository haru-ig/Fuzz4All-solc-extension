pragma solidity ^0.8.0;
contract Solidity2Compatibility1
{
	constructor () public {}
	function test1() public pure {
		Solidity2Compatibility scc;
		scc.test2();
	}
	function test2() public pure {
		Solidity2Compatibility1 sctc;
		sctc.test1();
	}
}
