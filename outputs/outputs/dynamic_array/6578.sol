pragma solidity ^0.8.0;
contract T00F_mut {
	uint[] private b;
	uint[] x = [1, 2];
    uint[] private b_storage;
    uint[] a_storage;
    uint[] storage b_storage = [7, 8];
    uint[] storage a_storage = [9, 10];
}
