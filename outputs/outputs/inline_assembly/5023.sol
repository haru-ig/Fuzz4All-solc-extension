pragma solidity ^0.8.0;
contract bad_external_asm_1 {
	uint data_public;
	constructor() {
		assembly {
		    data(0) += 5; data(1) += 5; data(2) += 5; data(3) += 5; data(4) += 5;

		    data(0) += 3; data(1) += 3; data(2) += 3; data(3) += 3; data(4) += 3;

		    data(0) += 1; data(1) += 1; data(2) += 1; data(3) += 5; data(4) += 5;

		    data
