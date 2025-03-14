pragma solidity ^0.8.0;
library TestArrayLib {
	function testArray() returns (uint[]) {
		uint memory data = 10;
		uint[] memory aaa = new uint[](data);


		assert(aaa[data]!= 9);
		for (uint i = 0; i < aaa.length; i++) {
			aaa[i] = i + 2;
		}
		return aaa;
	}
}
contract test64 {
	library test64lib{
		struct Address { uint addr; }
	}
	function test() public view returns(test64lib.Address memory a) {
		a.addr = 0;
		return a;
	}
}
contract test65 {
	function test() public returns (uint[] memory a) {
		a = new uint[](10);
		return a;
	}
}
contract test66 {
	function x() public {
		test66lib.Address storage x = 10;
	}
}
contract test66lib {
	struct Address { uint addr; }
}


pragma solidity ^0.8.0;

contract TestArrayLib {
  function asBytes(uint256 _value) public pure returns (bytes memory) {
    if (0 < _value) {
      return bytes(_value);
    } else {
      return new bytes(0);
    }
  }




  function asBytes2(uint256 _value) public pure returns (bytes memory) {
    if (_value == 0)
