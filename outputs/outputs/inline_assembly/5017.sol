pragma solidity ^0.8.0;
contract bad_external_asm {
	uint data_memory; memory_map memory_mapped;
	constructor() {
		data_memory = memory_mapped;
		memory_mapped += 5;
	}
}

contract good_external_asm {
	uint data_memory;
	memory_map internal memory_mapped;

	constructor() {
		data_memory = memory_mapped;
		memory_mapped += 5;
	}
}

contract good_external_asm_2 {
	uint data_memory;
	address internal addr_memory;
	memory_map internal memory_mapped;

	constructor() {
		data_memory = memory
