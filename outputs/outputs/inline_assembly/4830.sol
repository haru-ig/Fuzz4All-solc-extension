pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data = mutator(20,0);
	constructor() public {
		data.h = 20;
	}
	function modify() public {
		data.i = data.h;
	}
}

```
