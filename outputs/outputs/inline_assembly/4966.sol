pragma solidity ^0.8.0;

contract simple {

	function getData1() public returns (uint) {
		uint[5] memory _data = data_private;
		uint _len = _data.length;
		_data[1] = uint(keccak256(abi.encodePacked(uint256(_len)))));
		return _data[1];
	}

	function getData2() public returns (uint) {
		uint[] memory _data = data_private;
		uint _len = _data.length;
		uint_data_private_increment(0);
		return _data[1];
	}

	function getData3() public returns (uint) {
		uint[] memory _data = data_private;
		uint _len = _data.length;
	}

	function getData4() public returns (uint) {
		uint[5] memory _data = data_private;
		uint _len = uint_data_private_increment_return(0);
		return _data[1];
	}

	function getData5() public returns (uint) {
		uint[5] memory _data = data_private;
		uint _len = data_private[0];
	}

	function getData6() public returns (uint) {
		uint[5] memory _data = data_private;
		uint _len = data_private[1];
	}

}

contract simple_test {
	function test() public {
		Simple c = new Simple();
		uint r = c.getData1();
	}
}
