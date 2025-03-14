pragma solidity ^0.8.0;
contract simple {
	address owner;
	mapping(uint => string) dataMap;
	constructor() {
		(owner,) = payable(msg.sender).call{value: 50 ether}("");
	}
	function add(uint i) public payable {
		dataMap[i] = "item" + i;
	}
	function changeData(uint i) public payable {
		dataMap[i] = "changed" + i;
	}
	function getData() public view returns (uint) {
		return dataMap[0];
	}
}
