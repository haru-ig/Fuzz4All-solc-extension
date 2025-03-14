pragma solidity ^0.8.0;
contract m106 {
	address payable[] public foo;
	constructor() public {
		foo.push(payable(new m105()));
		foo.push( payable(new m107()) );
	}
}
