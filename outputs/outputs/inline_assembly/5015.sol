pragma solidity ^0.8.0;
contract good {
	uint internal counter = 0;
	constructor() {
		counter += 5;
		counter += 2;
	}
}
contract bad_counter_use {
	uint internal counter = 0;
	constructor() {
		counter += 5;
		counter += 5;
		counter_internal += 5;
	}
}
contract good_counter_use {
	uint internal counter_internal = 0;
	constructor() {
		counter_internal += 5;
		counter_internal += 5;
		counter_internal += 5;
	}
}
contract bad_counter_usage_1 {
