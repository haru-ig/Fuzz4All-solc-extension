pragma solidity ^0.8.0;
contract A {
	uint private counter = 0;
	uint internal x = 0;
	mapping (address => uint256) balances;
	constructor() public {
		balances[msg.sender] = balances[msg.sender].add(1);
	}

	function transfer(address payable _to, uint256 _amount) public {
		balances[msg.sender] = balanceOf(msg.sender).sub(_amount);
		balances[_to] = balances[_to].add(_amount);
	}

	function balanceOf(address _addr) public view returns (uint256) {
		 return(balances[_addr]);
	}
}
