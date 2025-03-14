pragma solidity ^0.8.0;

contract Arithmetic
{
	constructor() public {
	}

	struct S is IArith {
		S memory x;
		S(S memory p, S memory q) public {
			r = _add_(p.r, q.r);
			b = _mul_(p.b, q.b) > _add_(p.b, q.b);
		}
	}

	function x(S q) internal pure returns (S memory) {
		return S(q.x, q);
	}
	function add(S memory s1, S memory s2) internal pure returns (S memory) {
		return S(S(s1.r, s1.b), S(s2.r, s2.b));
	}
	function _add_(S memory s1, S memory s2) internal pure returns (S memory) {
		return S(add(s1, s2), s1.b == s2.b);
	}
	function mul(S memory s1, S memory s2) internal pure returns (S memory) {
		return _mul_(s1, s2, 2**251);
	}
	function _mul_(S memory s1, S memory s2, uint256 r) internal pure returns (S memory) {
		uint256 b = mul(s1.r, s2.r) + s1.b * s2.b;
		return S(b, s1.b == s2.b);
	}
	function sub(S memory s1, S memory s2) internal pure returns (S memory) {
		return _sub_(s1, s2, s1);
	}
	function _sub_(S memory s1, S memory s2, S memory carry) internal pure returns (S memory) {
		return S(_add_(s1, sub(carry, s2, carry)), s1.b == s2.b);
	}
	function _cmp_(S memory s1, S memory s2) internal pure returns (bool) {
		return s1.b == s2.b && s1.r > add(s2, s1);
	}
}
