pragma solidity ^0.8.0;
contract Good {

	function f() public view returns(uint){
		uint[] memory values;
		uint value1 = 1;
		uint value2 = 2;
		return value1 + value2;
	}

	function g() public view returns(uint[]){
		uint[] memory values;
		uint value1 = 1;
		values.push(value1);
		uint value2 = 2;
		values.push(value2);
		return values;

	}

	function h() public view returns(uint256, uint[] memory){
		uint256 x = 1;
		uint[] memory values;
		values.push(x);
		uint value2 = 2;
		values.push(value2);
		return (x, values);
	}

	function i() public view returns (uint16) {
		uint16 x = 1;
		uint[] memory values;
		values.push(x);
		uint value2 = 2;
		values.push(value2);
		return (x, values);
	}
}
