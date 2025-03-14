pragma solidity ^0.8.0;
contract Bug05 {
	constructor(uint i) {
	}
	function func1(uint i, uint j, uint k) public {
	}
	function func2(uint i) public {
		func1(i, i, i);
	}
}
