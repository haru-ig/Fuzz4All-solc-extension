pragma solidity ^0.8.0;

contract Test2 {
	bool public b;
	constructor() {

	    S memory storageS1;
	    memory memoryVar2;

	    storageS1.foo = "renamed";
	    storageS1.foo = "";
	    memoryVar2.foo = "renamed";
	    memoryVar2.foo = "";

	    b = true;
	}
}
