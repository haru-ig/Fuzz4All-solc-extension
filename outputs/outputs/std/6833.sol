pragma solidity ^0.8.0;
contract A {
	uint x[10];
	function f(uint i) public {
        x[i] = msg.sender;
	}
	fallback() external {
	}
	function g () public {
		f(2);
		f(3);
	}
}
contract B {
	uint x[10];
	function f(uint i) public {
        x[i + 1] = msg.sender;
	}
	fallback() public payable {
	}
	function g () public {
		f(14);
		f(23);
	}
}
