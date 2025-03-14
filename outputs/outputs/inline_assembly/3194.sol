pragma solidity ^0.8.0;
contract C {
	function x() public pure returns(uint) {
		return 6;
	}
	function set(uint a) internal {
		assembly {
			balances[msg.sender] = a
		}
	}
	mapping(address => uint) public balances;
}
