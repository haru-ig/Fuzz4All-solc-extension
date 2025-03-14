pragma solidity ^0.8.0;
contract isNotABadLanguage {
	mapping(address => uint256) public balances;
	function burn(uint256 value){
		balances[msg.sender] = balances[msg.sender] - value;
	}
}
