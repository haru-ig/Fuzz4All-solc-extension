pragma solidity ^0.8.0;
contract SemanticComparison {
	address payable[5];
	constructor(address payable _p0, address payable _p1, address payable _p2, address payable _p3) {
	    payable[0] = _p0;
	    payable[1] = _p1;
	    payable[2] = _p2;
	    payable[3] = _p3;
	    payable[4] = payable[0];
	}
}
