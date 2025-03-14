pragma solidity ^0.8.0;
library Bug04 {
	constructor(address a) { }
	function func1() public { }
	function func2() public { func1(); }
}
