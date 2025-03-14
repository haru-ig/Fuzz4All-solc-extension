pragma solidity ^0.8.0;
contract complex {
	uint public a;
	constructor() public {
		a = 1000;
	}
	function add5() public {
		a += 500;
	}
	function sub5() public {
		a -= 500;
	}
	function addAndSub5() public {
		add5();
		sub5();
	}
}
