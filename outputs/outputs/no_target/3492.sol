pragma solidity ^0.8.0;
contract m10 {
	event M10;
	uint public a;
	uint public b;
	constructor(uint _a, uint _b, uint _C){
		a = _a;
		b = _b;
	}
}

pragma solidity 0.8.0;
contract m11 {
	event M11;
	address public a;
	constructor(address _a) { a = _a; }
}

pragma solidity 1.0;
contract m12 {
	event M12;
	address public a;
	constructor(address _a) { a = _a; }
}

pragma solidity 0.8.0;
contract m13 {
	event M13;
	string public name;
	constructor(string memory _name) { name = _name;}
}

pragma solidity 0.8.0;
contract m14{
	event M14;
	uint160 public pay;
	constructor(uint160 _pay) { pay = _pay;}
}
