pragma solidity ^0.8.0;
contract m112 {
	event M102();
	uint public a;
	mapping(address => uint) public m;
	mapping(address => uint) public m2;
	constructor(uint _a, mapping(bytes32 => uint) _m, uint _m2) { a = _a; m = _m; m2 = _m2;  }
}
contract m113 {
	event M102();
	uint public a;
	constructor() public { a = 0xe0000000000000000000000000000000000000000000000000000000000000; }
}
contract m114 {
	event M102();
	uint public a;
	constructor() public { a = a + 1;  }
}
contract m118 {
	event M102();
	uint public a;
	constructor() public { a = 1; a++; }
}
contract m202 {
	event M102();
	uint public a;
	constructor() public { a = 1e0; }
}
contract m204 {
	event M102();
	uint public a;
	constructor() public { a = 1e10; }
}
contract m109 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a;  }
}
contract m110 {
	event M102();
	uint public a;
	mapping(uint => uint) public m;
	constructor(uint _a) { a = _a;  m[13] = 22;   }
}
contract m117 {
	event M102();
	uint public a;
}
contract m120 {}
contract m119 {
	event M102();
	uint public a;
	constructor() public { a = 10;   }
}
contract m200 {
	event M102();
