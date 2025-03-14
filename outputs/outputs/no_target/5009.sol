pragma solidity ^0.8.0;
contract BAB {
	function A() public pure {
		uint256 a = 1;
		uint256 b = 1;
		a += b;
		a += 1;
		uint256 c = 10;
		uint256 d = 10;
		uint256 e = 10;
		b += c;
		c = 10;
		uint256 f;
		d -= e;
		f = a + c + d + e + b - 2*g();
		require(f == e + 2*d + b + 3 + 2*b + 10, "fail");
		a = 2 + c + d + e + b - 2*g();
	}
}
assembly {
    def g() private pure {
        x := mul(1, 20000)
        mul(1, 20000)
        return x
    }
}
