pragma solidity ^0.8.0;
contract Mutate66 {
	struct Point {
		uint x;
		uint y;
	 }

	using Mutate59_Semantics for uint;

	function Mutate05(Point memory p, uint x0) public pure returns(Point memory) {
		p.x -= x0;
		return p;
	}

	function Mutate05(uint x0, uint x1) public pure returns(uint) {
		return Mutate05(Point(x0, 0), x1);
	}

	function Mutate05(Point memory p, int x0) public pure returns(Point memory) {
		p.x -= x0;
		return p;
	}

	function Mutate05(uint x0, int x1) public pure returns(uint) {
		return Mutate05(Point(x0, 0), x1);
	}

	function Mutate05(Point memory p, string memory s0) public pure returns(Point memory) {
		p.x -= uint(s0.length);
		for (uint i; i < uint(s0.length); ++i) p.x = Mutate05(p, uint(s0[i]));
		return p;
	}

	function Mutate05(uint x0, string memory s1) public pure returns(uint) {
		return Mutate05(Point(x0, 0), s1);
	}

	function Mutate05(Point memory p) public pure returns(Point memory) {
		p.x -= 1;
		uint q = p.x;
		return Point(1, p.x);
	}

	function Mutate05(uint x0, uint x1) public pure returns(uint) {
		return Mutate05(Point(x0, x1), x0);
	}

	require(x0 + (x1-x0) <= uint(2**255));
}
