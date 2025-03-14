pragma solidity ^0.8.0;
contract Memory {
	function getAddress(uint x) private pure returns(address) {
		uint array[] = new uint[](1);
		array[0] = 42;
		return (address(array[x/2]));
	}
}

pragma solidity ^0.8.0;
contract Random {

	uint constant private ITERATIONS = 10;
	uint[] private data;
	constructor(uint[2] memory z) public {
		data = z;
	}
	function randomUInt() public returns(uint) {
		uint sum = 0;
		uint n = uint(data.length);
		for (uint i = 0; i < ITERATIONS; i++) {
			uint num = uint(keccak256(abi.encodePacked(uint160(blockhash(block.number - n + uint(data[i])), uint(data[i]))))));
			if (num >= data.length) {
				num = abicoder.decode(data[data.length - 1]);
			} else {

			}
			sum += num;
		}
		return sum % uint(data.length);
	}
}
