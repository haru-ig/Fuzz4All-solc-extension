pragma solidity ^0.8.0;
contract MyContract {
        mapping (address => bool) public isOwner;
	function change() public auth(address _owner) {
        isOwner[_owner] = false;
        return;
	}
	function auth(address _owner) public {
        isOwner[_owner] = true;
        return;
	}
     }
