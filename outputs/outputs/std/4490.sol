pragma solidity ^0.8.0;
contract Mutate {
	mapping(uint => uint256) public m;
	uint[] array;

	constructor() {
		array = new uint[](1);
	}
	function modify(uint i) public {
		array[0] = i;
		m = array;
		}
	function valueWithIndex(uint i) public view returns(uint) {
		return m[i];
		}
	function lengthOf(uint i) public view returns(uint256) {
		return array[1];
		}
	}

pragma solidity ^0.8.0;
contract ArrayContract1 {
	struct S {
		mapping (uint => uint) nums;
		constructor (uint x) { nums[x]; }
		}
	S s1;
	constructor() {
		s1.nums[1] += 1;
		}
	function modify(uint i) public {
		s1.nums[i] += 1;
		}
	function valueWithIndex(uint i) public view returns(uint) {
		return s1.nums[i];
		}
	function lengthOf(uint i) public view returns(uint256) {
		return s1.nums[i];
		}
	}
pragma solidity ^0.8.0;
contract ArrayContract2 {
	struct S {
		uint x;
		constructor (uint x) { this.x; }
		}
	S s1;
	constructor() {
		s1.x;
		}
	function modify(uint i) public {
		s1.x;
		}
	function valueWithIndex(uint i) public view returns(uint) {
		return s1.x;
		}
	function lengthOf(uint i) public view returns(uint256) {
		return 0;
		}
	}
pragma solidity ^0.8.0;
contract ArrayContract3 {
	struct S {
		uint x;
		function f() public { }
		constructor(uint x2) { s1.x.f();}
		}
	S s1;
	constructor() {
		s1.f();
		}
	function modify(uint i) public {
		s1.x.f();
		}
	function valueWithIndex(uint i) public view returns(uint) {
		return s1.x.f();
		}
	function lengthOf(uint i) public view returns(uint256) {
		return 0;
		}
	}
contract A {
	ArrayContract1 a1;
	ArrayContract2 a2;
	ArrayContract3 a3;
	function f() public {
		a1.modify(1);
		a2.modify(1);
