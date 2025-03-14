pragma solidity ^0.8.0;

uint8 test(uint8 _input) internal pure returns (uint8)
{
    return _input;
}

uint256 test(uint _input_1, uint _input_3, uint _input_4) internal pure returns (uint)
{
    return uint(uint(_input_1)|uint(_input_3)<<uint(8));
}

bytes32 constant test_array_byte = 0xff00ff000000ff;
bytes32 constant test_array_word = 0xffff0000ffff0000;
 bytes32[22] test_array;


pragma solidity ^0.8.0;

uint8 ctest(uint8 _input_1) internal pure returns (uint8)
{
    return _input_1;
}

uint256 ctest(uint _input_1, uint _input_3, uint _input_) internal pure returns (uint)
{
    return uint(uint(uint8(_input_1)|uint(uint16(_input_2)|uint(uint32(_input_3)))<<uint(8)));
}
uint256[10] test_array_word;
contract Mutate32{
	address ad;
	address ed;
	uint256 test;
	constructor(address ad) {
		if (bool(ad)) {
			ad = ad;
			while(ad){
				ed = ed;
				ad = 0;
			}
		}
	}
	function test2() public {
		test = test;
		test = test;
		test = test;
		test = test;
