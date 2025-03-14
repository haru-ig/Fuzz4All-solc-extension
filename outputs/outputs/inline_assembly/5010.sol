pragma solidity ^0.8.0;
contract good {
	struct Item {
		uint id;
		uint quantity;
	}
	mapping(uint256 => Item) public items;
	uint256 public count_;
	constructor() {
		count_ = 250;
	}
	function addItem() public {
		uint counter = 0;
		for (uint i = 0; i < 250; i ++) items[counter].id = i;
		count_ ++;
	}
	function clearItems() public {
		count_ = 125;
	}
	function getItems() public view returns (uint[]) {
		Items memory items_
