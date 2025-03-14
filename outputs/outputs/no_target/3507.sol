pragma solidity ^0.8.0;
contract m105 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a, uint _m35) { a = _a;   m["9e00"] = 34;  m["35"] = 2;  m["35"] += 1000;  m["35"] += _m35; }
}

pragma solidity ^0.8.0;
contract m106 {
	event M102();
	uint public a;

}
contract m107 {
	event M102();
	uint public a;
	bytes32 public m1, m2;
	constructor() { a = 0xa5; m1 = 0x555555555; m2 = 0xaaaaaaaaaaa; }
}
contract m108 {
	event M102();
	uint public a;
	constructor() { a = 0x05; }
	function f() public { m106 m; m1 = 0x55;}
	function f();
	function g() internal { m106 m; m1 = 0x555;}
}
contract m109 {
	event M102();
	int public a;
	constructor() { a = -10; }
}
contract m110 {
	event M102();
	uint public a;
	constructor() { a = bytes32(0x000000000000000000000000000000000000000000000000000000fffd); }
	function f() public { a = 0xaaaaaaaaaaaaaaaa;}
	function f() public constant returns (uint) { a = 0xfe00000000000000000000000000000000ffffffffffffffffffffffffffffffffffffffffffffffff; return
