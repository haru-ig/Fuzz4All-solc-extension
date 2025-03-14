pragma solidity ^0.8.0;
contract ArrayMut
{
	function mutated(address _a, address _b, uint i, uint8 j) public pure{
		_a[i][j] += 1;
	}
}

pragma solidity ^0.8.0;
contract Sum
{
	uint256[2] immutable _a;
	uint immutable _length;

	constructor(uint256[] memory _x)
	{
		assert (_x.length<=1);
		assert (_x[0] >= 4555 && _x[0] <= 6775);
		_length = _x[0];
		_a.length = _length;
		for (uint i = 0;i < _length;i++){
			_a[i] = _x[i];
		}
	}

	function sum (uint i) public view returns(uint){

		assert (_a.length > i);
		sum = 0;
		for (uint j = i;j < _a.length;j++){
			sum += _a[s];
		}
		return sum;
	}

	function get_sum () public view returns(uint){
		assert (_length <= 1);
		return _length * _a[0] + _a[0];
	}
}

pragma solidity ^0.8.0;
contract Random
{
	function random_bytes(uint256 length) public pure returns (bytes){
		bytes memory temp = new bytes(length);
		for (uint i = 0;i < length;i++){
			temp[i] = uint8(uint256(rand8()));
		}
		return temp;
	}

	function rand8() public pure returns (uint8){
		uint8 rand;
		rand = bytes16(uint32(keccak256(abi.encodePacked(uint(now.seconds)))))[0];
