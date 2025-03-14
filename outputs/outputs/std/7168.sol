pragma solidity ^0.8.0;
contract BitwiseAND {
	function test() public pure {
		uint a;
		uint b;
		a=0xffff;
		a&=b;
		a=0xff00;
		a&=b;
		a=0xff00;
	}
}
pragma solidity ^0.8.0;
contract BitwiseOR {
	function bitsTest() public pure {
		uint a;
		uint b;
		a=0xff00;
		a|=b;
		a=0xff00;
		a|=b;
		a=0xffffffff;
	}

	function test() public pure {
		uint a;
		uint b;
		a=0;
		a|=b;
		a=0xffffffff;
		a|=b;
		a=0xff00;
	}
}
```

* `BitwiseXOR` will return zero if `a` and `b` have *different* sign; if `a` is negative, then the XOR will return positive; if `a` is positive, then the XOR will return zero. Since XOR is a commutative operation, it is equivalent to bitwise **NOT** on signed numbers.
* `BitwiseAND` will return zero if `a` and `b` have *different* truth values (true or false); if `a` is false, then `b` will be false; if `a` is true, `b` will be false; if `a` is true, `b` will be true. Since `AND` and `OR` are exclusive or operations, this would return `0`, which means that `a & ~b == ~a`, so that the bitwise AND will return zero.
* `BitwiseOR` is similarly to AND. Bitwise OR on unsigned numbers will have the same behavior as AND on signed numbers, thus returning the same result as AND.

In order to be able to use bitwise operators, and even create custom contract-like behavior, Solidity contracts must be defined using the **contract** keyword. This means that the contract's name must always be the first line of a contract, following the first colon. It can also be added to the contract declaration to rename it.
`The contract declaration must always be the first line of the contract.**`

For example:

```
pragma solidity ^0.8.0;
contract AmazingContract {	// This is just a "contract" declaration!
	// A contract is a collection of functions and variables.
	// Each function is defined using the keyword "function". Here,
	// let's add two functions to `AmazingContract`.
	uint a;
	function A() {
		a = address(this);
	}
	function B() public pure {
		uint256 b;
		uint256 c;
