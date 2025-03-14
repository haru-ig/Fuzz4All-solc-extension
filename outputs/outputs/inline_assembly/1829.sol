pragma solidity ^0.8.0;
abstract contract Base {
	address payable public admin;
	constructor() { admin = payable(msg.sender); }
}
contract Example extends Base {
	function setContractAdmin(address payable x) public { admin = x; }
	function setAdminAddress(address payable a) public { admin = a; }
	contract Agg {
		constructor() public { admin = msg.sender; }




	}
}
