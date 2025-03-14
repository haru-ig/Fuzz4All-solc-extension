pragma solidity ^0.8.0;
contract C {
	function x() public pure returns(uint) {
		return 6;
	}
	mapping(address => uint) public balances;
}
pragma solidity ^0.8.0;
contract C {
	mapping (address => uint) public balances;
	function x() public pure onlyOwner returns(uint) {
		return 6;
	}
}
contract C {
	mapping (address => uint) public balances;
	constructor() C.x() {
		balances[msg.sender] = 1 ether;
	}
}
