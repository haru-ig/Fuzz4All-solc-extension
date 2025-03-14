pragma solidity ^0.8.0;
contract Convert {
	function toBase10(uint x) public pure returns(uint) {
        return (x * 10);
	}
	function toHexadecimal(uint x) public pure returns(uint) {
        return (x * 16);
	}
}

pragma solidity ^0.8.0;
contract Multiprecision {
	function mul(uint a, uint b) pure public returns(uint) {
        return (a * b);
	}
	function div(uint a, uint b) pure public returns(uint) {
        return (a / b);
	}
}
