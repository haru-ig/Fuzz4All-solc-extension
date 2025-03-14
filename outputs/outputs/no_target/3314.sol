pragma solidity ^0.8.0;
contract modified3{
	uint16 y = 2 ** uint16(255) - 1 + 1;
	uint16 z   = max(uint8(y) - uint8(y));
	address addr = payable(uint64_2(1));
	uint256 x = 2 ** y - 2 ** uint16(255) - 1;
	uint8 x_z = uint8(x + z);
    function max(uint8 left_uint8, uint8 right_uint8) public pure returns (uint8 ret){
		ret = right_uint8 < left_uint8? right_uint8 : left_uint8;
    }
}
