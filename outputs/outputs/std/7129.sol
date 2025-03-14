pragma solidity ^0.8.0;
contract BitwiseOR {
	uint a;
	uint b;
	function test() public {
		uint temp = a|b;
		a = a + b;
		b = a&b;
	}
}

contract DoNotRevert {
		function test() public { revert(); }
}

contract NoCollision {
	mapping (address => address) public addressToAddress;
}
contract MultiCollision {
	mapping (address => address) public addressToAddress;
}
contract MultipleAdd {
	address[0] public a;
	address[50] public b;
	address[] public addresses;
	function test() public { add(addressToAddress[0], 1); }
	function add(address from, uint to_) public {
		a.push(from);
		b.push(from);
		addresses.push(to_);
	}
}

contract MultipleOwner {
	address[2] owner;
	address[] public owners;
	function setOwner(address addr_) public {
		require (keccak256(abi.encodePacked(addr_))!= 0, "This contract has not been deployed yet!");
		checkOwner(from: addr_);
	}
	function checkOwner(address _owner) public {
		if (keccak256(abi.encodePacked(_owner))!= 0) {
			require (keccak256(abi.encodePacked(_owner))!= 0, "This contract has not been deployed yet!");
			if (keccak256(abi.encodePacked(addressToAddress[_owner])) == 0) {
				owner.push(_owner);
			}
		}
	}
}
contract SingleOwner {
	address owner;
	function setOwner(address addr_) public {
		require (keccak256(abi.encodePacked(addr_))!= 0, "This contract has not been deployed yet!");
		checkOwner(from: addr_);
	}
	function checkOwner(address _owner) public {
		if (keccak256(abi.encodePacked(_owner))!= 0) {
			require (keccak256(abi.encodePacked(_owner))!= 0, "This contract has not been deployed yet!");
			if (owner == 0) {
				owner = _owner;
			}
		}
	}
}
contract OnlyPublicMembers {
	address a;
	address b;
	address c;
	address[] public accounts;
	address private a_;
	address private b_;
	address private c_;
