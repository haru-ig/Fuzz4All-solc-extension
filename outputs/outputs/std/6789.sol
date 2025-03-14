pragma solidity ^0.8.0;
contract Contract {
	struct Event {
		uint id;
		string from;
		string to;
		uint amount;
		uint timestamp;
	}
	event Log(Event memory);
}
