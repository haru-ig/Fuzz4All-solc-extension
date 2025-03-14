pragma solidity ^0.8.0;
interface Memory {
	uint[2] private int_storage;
	uint[2] set_int_storage(uint _int);
	uint[2] get_int_storage(uint);
}
