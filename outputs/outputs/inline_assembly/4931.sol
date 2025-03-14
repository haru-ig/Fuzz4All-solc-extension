pragma solidity ^0.8.0;
contract newContract is complex {
	uint public oldA = 1000;
	function newAdd() public {
		oldA += 500;
	}
	function newSub() public {
		oldA -= 500;
	}
	function newAddAndSub() public {
		newAdd();
		newSub();
	}
}
