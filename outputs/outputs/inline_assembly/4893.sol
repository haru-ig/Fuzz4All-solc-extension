pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated11 {
	struct mutated11 {
		uint a;
		uint b;
	}
	mutated11 public data;
	constructor() {
		data.a = 20;
		data.b = 15;
	}

	function addNotRelevant(uint notRelevantVar1, uint notRelevantVar2){
		data.b += notRelevantVar1;
		data.b += notRelevantVar2;
	}
	function addNotRelevant2(uint notRelevantVar1, uint notRelevantVar2){
		data.b += notRelevantVar2;
		data.b += notRelevantVar1;
	}
	function addRelevant() public {
	  addNotRelevant(data.a, 2);
	}
}
```
