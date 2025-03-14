pragma solidity ^0.8.0;
struct point {
	uint x;
	uint y;
}
contract simple {
	uint[] storage data_private;
	function getData() public returns (uint) {
		uint[] memory _data = data_private;
		_data.push(99);
		return _data[3];
	}
	function setX(uint x) public {
		data_private.push(x);
	}
}
