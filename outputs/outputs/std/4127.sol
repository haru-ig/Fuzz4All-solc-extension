pragma solidity ^0.8.0;
contract Convert3Mutant {
	uint256 constant two = 2;
	address addressOfAddress;
	uint256 num;
	bool boolVar;
	mapping (address=>uint256) mappingVal;
	uint16[] memory stringArray1;
	uint8[] memory byteArray1;
	mapping (bytes3 => uint256) mappingValHex;
	constructor () public {
		num = 5;
		boolVar = false;
	}
}
