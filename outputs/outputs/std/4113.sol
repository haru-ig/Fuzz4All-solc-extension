pragma solidity ^0.8.0;
contract Array3Mut {
	address[] array;
	mapping(address=>uint256) mapAddress;
	function add(uint256 newvalue) public {
		array.push(newvalue);
		mapAddress[msg.sender] = 0;
		mapAddress[msg.sender] = 0;
	}
	function getArrayAddr() public view returns (address[]) {
		return array;
	}
	function setAddress(address addr, uint256 newvalue) public {
		mapAddress[addr] = newvalue;
	}
	function getAddress(address addr) public view returns (uint256) {
		return mapAddress[addr];
	}
}
