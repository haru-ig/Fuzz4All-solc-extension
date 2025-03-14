pragma solidity ^0.8.0;
contract fourth{
    uint public g;
    constructor function set(uint a) public{
        if (a <= 10000000) {
            g = a;
        }
    }
}
contract third{
	address private a;
	constructor() public payable {
		address payable payee = msg.sender;
		uint x = 10000000;
		a = payee.call.value(x)("");
	}
}
contract third{
	address private a;
	constructor() public payable {
		address payable payee = msg.sender;
		uint x = -100000000;
		a = payee.call.value(x)("");
	}
}
contract third{
	address private a;
	constructor() public payable {
		uint x = 0;
		address payable payee = msg.sender;
		a = payee.call.value(x)("");
	}
}
contract third{
	uint private z;
	uint private s;
	constructor() public {
		z = z - s;
	}
}
contract third{
	uint private z;
	uint private s;
	constructor() public {
		z++;
	}
}
