pragma solidity ^0.8.0;
contract Modded {
	constructor() {
		Modded mod = new Modded();
	}
}

pragma solidity ^0.8.0;
contract Modded {
	string memory a = "a bytes memory a";
	bytes[] private b;
	uint[] public c;
	uint4[2] public d;
	mapping(uint => uint) public e;



	function getBytes() public pure returns (bytes memory) {
		return abi.encode(a);
	}
	function setBytes() public pure returns (string memory a) {
		bytes memory temp = abi.encode(a);
		return string(new bytes(temp));
	}
	function setByteArray(bytes memory _array) public pure returns (string memory a) {
		a = string(new bytes( _array));
	}
	function setUbytes(bytes memory _array) public pure returns (bytes memory) {
		return abi.encode(_array);
	}
	function setB(bytes memory _array) public {
		c[0] = 1;
		bytes memory temp = abi.encode(_array);
		b = new bytes[](1);
		b[0] = temp;
	}
	function setAb(bytes memory... memory _arr) public {
		c = new uint[3]{};
		c[0] = 1;
		bytes memory temp = abi.encodePacked(_arr);
		b = new bytes[](1);
		b[0] = temp;
	}
	function setAbAndMemory(bytes memory _array, string memory _memory) public {
		c = new uint[3]{};
		c[0] = 1;
		b = new bytes[](1);
		b[0] = _array;
		a = _memory;
	}
	function setUmem(uint _memory) public returns (bytes memory) {
		string memory a = string(uint256(_memory));
		a = "a uint";
		uint[] c = new uint[](1);
		c[0] = 1;
		return abi.encodePacked(a);
	}
	function setUmemAnd
