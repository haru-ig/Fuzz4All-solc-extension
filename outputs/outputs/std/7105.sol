pragma solidity ^0.8.0;
contract BitwiseXORX {
	uint indexed x;

	function test() public{
		x = x ^ x;
	}
}

pragma solidity ^0.8.0;
contract BitwiseXORX {
	uint a;

	function test() public{
        a = a ^ a & 1;
	}
}
address x = 0x4123425F5e214262763b811577235a127a04f285;
contract BitwiseXORX {
	function getBytes() public view returns(uint[] memory){
		uint[] memory result = new uint[](5);
		result[0] = 0;
		result[1] = 0;
		result[2] = 0;
		result[3] = 0;
		result[4] = 0;
		return result;
	}

	function getBits() public view returns(uint8[] memory){
		uint8[] memory result = new uint8[](8);
		result[0] = 0;
		result[1] = 0;
		result[2] = 0;
		result[3] = 0;
		result[4] = 0;
		result[5] = 0;
		result[6] = 0;
		result[7] = 0;
		return result;
	}

	function test() public{
		uint8[] memory bits = getBits();
		uint8[] memory byte = getBytes();
		x = x ^ byte[4];
		x = x ^ bits[5];
		x = x ^ byte[3];
		x = x ^ byte[2];
		x = x ^ byte[1];
		x = x ^ bits[6];
		x = x & byte[0];
	}
}
