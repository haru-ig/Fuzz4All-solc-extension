pragma solidity ^0.8.0;
contract Good {
	uint counter = 0;
	uint public data_public;
	address payable non_payable;
	constructor() {
		non_payable.call{value:1000}("");
		counter += 1;
		inlineAssembly(data_public += 1);
		non_payable.call{value:500}("");
		counter += 5;
		inlineAssembly(data_public += 5);
	}
}
```
