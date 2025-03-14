pragma solidity ^0.8.0;
contract C {
	uint[][][][] A;
	constructor (uint[][][][] memory array){
		A = array;
		A = A;
		A = A;
		A[1][1][0] = 1;
		A[0][0][0] = 1;
		A[0][0][0] = 1;
		A[0][1][1] = 1;
		A = A;
	}
}
