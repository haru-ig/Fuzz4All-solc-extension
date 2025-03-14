pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract good {
	struct Item {
		uint8 fieldA;
		uint8 fieldB;
		uint8 fieldC;
		uint8 fieldD;
		uint8 fieldE;
		uint8 fieldF;
		uint8 fieldG;
		uint8 fieldH;
	}
	Item record;
	constructor() public {
		record.fieldA = 5;
		record.fieldB = 4;
		record.fieldC = 2;
		record.fieldD = 1;
		record.fieldE = 0;
		record.fieldF = 1;
		record.fieldG =
