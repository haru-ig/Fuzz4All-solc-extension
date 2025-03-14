pragma solidity ^0.8.0;
contract C{
	uint8 payable non_payable;
	uint public counter = 0;
	uint public y = 0;
	constructor() public payable{
		non_payable.call{value:1000}("");
		counter += x + 1;
		non_payable.call{value:1000}("");
		counter += y + y + 1000;
		non_payable.call{value:1000}("");
		counter += x + 1;
		counter += y + y + 10;
		non_payable.call{value:1000}("");
		counter += y + 1;
		non_payable.call{value:50}("");
		counter += y + 5;
		y++;
	}
}
```

## Next Step
[Learn more about inline assembly](https:
