pragma solidity ^0.8.0;
contract Convert {
	address zero;
	function convertStringToInt32(string memory s) public pure returns (uint32) {
		bytes memory b = bytes(s);
		uint length = b.length;
 	uint _int = 0;
 	for (uint j = 0; j < length; j++) {
 		uint x = uint(b[j]);
 		_int = _int ^ (x * 256 ** length - i);
 	}
 	return _int;
	}
}





pragma solidity ^0.8.0;
contract Random {
	 function randomNumber(uint amount, uint start, uint stop) public pure returns (uint num) {
		 num = start + (uint(keccak256(abi.encode(amount)))) % stop;
	 }
		function randomBoolean() public pure returns (bool) {
		 uint randomByte = uint(keccak256(abi.encode((blockhash(uint(block.timestamp) ^ lasttime)))) % 256);
		 return bool(randomByte % 2 == 0);
	 }
	uint lasttime = block.timestamp;
}
