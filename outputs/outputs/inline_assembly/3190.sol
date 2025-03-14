pragma solidity ^0.8.0;
contract C {
	function x() public view returns(uint){
		return 6;
	}
	mapping(address => uint) public balances;
}
