pragma solidity ^0.8.0;
contract B {
	address _foo;
    uint _bar;
    constructor() {
	}
    function bar() public payable {
	}
    function foo() public(address) {
	}
    function badFunction(uint baz) public {
	}
}

pragma solidity ^0.8.0;
contract C {
	constructor() {
	}
	function simple() public payable {
	}
}


pragma solidity >=0.6.0 <0.9.0;
contract A {
	address payable payableFunc;
	address payable payableCall;
	address payable payableEvent;
	uint256 payableFallback;
	constructor() public {}
}
contract B {
	constructor(A _A) public {}
}
contract C {
	address payable _payableVar = address(this);
	address payable getVar() public view returns (address payable) {
		return _payableVar;
	}
	function callPayableVar(address to, uint value) public returns (bool) {
		_payableVar.transfer(to, value);
		return true;
	}
	function fallback() public payable {
	}
	function payableFallback() public {
	}
}
contract MaliciousPayableAddress {
	A aaddress;
	address payable payableEgress;
	constructor(A _a) public {
		aaddress = A(_a);
	}
	function payableEgress() public view returns (address payable) {

	}
	function callPayableEgress() public payable {
		_payableEgress.transfer(aaddress.payableEgress(), 2e10);
	}
	function callPayableEvent() public {

	}
}
contract Test {
	address payable payableEgress;
	A aaddress;
	constructor(A _a) public {
		aaddress = A(_a);
	}
	function test() public view returns (bool,
