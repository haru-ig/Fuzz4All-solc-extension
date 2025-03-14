pragma solidity ^0.8.0;
contract simple {
	struct data_struct {
		uint _valueA;
		uint _valueB;
	}
	uint[] data;
	constructor() {
		data.push(data_struct(0,1));
		data.push(data_struct(42,42));
		data.push(data_struct(42,42));
		data.push(data_struct(0,1));
	}
	function getData() public view returns (data_struct) {
		data_struct memory _data = data_struct(data[0]._valueA,data[0]._valueB);
		return _data;
	}
}
