pragma solidity ^0.8.0;
contract MutableStorageForArray {
	uint[] public items;

	function pushArrayItem(uint newItem) public {
		items.push(newItem);
	}

	function popArrayItem() public {
		items.pop();
	}

	function resetArray() public {
		items.length = 0;
	}
}
contract MutableStorageForString {
	string public firstString;
	string public secondString;

	function firstStringSet(string memory _str) public {
		firstString = _str;
	}

	function secondStringSet(string memory _str) public {
		secondString = _str;
	}

	function firstStringGet() public view returns (string memory) {
		return firstString;
	}

	function secondStringGet() public view returns (string memory) {
		return secondString;
	}
}
