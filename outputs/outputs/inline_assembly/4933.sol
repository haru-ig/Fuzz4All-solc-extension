pragma solidity ^0.8.0;
contract simple {
	uint[] data;
	mapping(uint => string) dataMap;
	bool flag;
	constructor() {
		flag = true;
		add();
		data.push(0);
		flag = true;
		add();
		data.push(42);
		data.push(0);
		data.push(0);
		dataMap[42] = "test";
	}
	function add() public {
		data.push(data[data.length-1]+50);
	}
	function changeData() public {
		data[2] = 0;
		flag = true;
		data.push(data[data.length-1]+1000);
	}
	function getData() public view returns (uint) {
		return data[0];
	}
	function getDataMap() public view returns(string memory) {
		return dataMap[0];
	}
	function setFlag() public {
		flag =!flag;
	}
}
