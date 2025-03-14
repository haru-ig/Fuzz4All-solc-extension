pragma solidity ^0.8.0;
contract Multiprecision {
	int public a;
	constructor(a) public {
		a = 9;
	}
	function mul(a int _x) public pure returns (a int _y) { return(_x*_x+1); }
}

pragma solidity ^0.8.0;
contract Main {
	function main() public {
		a int p = a 1;
		a int p2 = a 2;
		a int sum = p + p2;
		a int result = p + a a;
		a int mul = p2 * p;
		a int mul2 = a 3 * p2;
		a int sqr1 = p ^ 1 ^ ~8;
		a int sqr2 = p * 4 + 2;
		a int sqr3 = p * a ^ 8 ^ 2;
	}
}
