pragma solidity ^0.8.0;
contract m102 {
	 event M(uint _a);
	 uint public aa;
	 uint private ab;
	 uint public a;

	 constructor(uint _a) { aa = _a; ab = 0;}

	 function M1() public { }
	 function M2(uint _param1) external { }
	 function M3(uint _a, uint _b) public view { }
}


pragma solidity ^0.8.0;
contract m40 {
	uint public a;
	constructor(uint _a) { a = _a; }
	function A() public { emit M101();}
	function B() public { emit M2(1);}
	function C() public { emit M3(1,1);}
	function D() public { emit M101();}
}
