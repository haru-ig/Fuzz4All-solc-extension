pragma solidity ^0.8.0;
contract mutated {
	uint public a;
	constructor() public {
		a = 20;
	}
	function multiply1() public {
		a = a * 2;
	}
	fallback() external {
		a = a + 1;
	}
}

contract mutated {
	uint public a;
	constructor() public {
		a = 20;
	}
	function add1() public {
		a = a + 1;
		assembly {
			a := a + 4
		}
	}
	function multiply1() public {
		a = a * 2;
		assembly {
			a := a * 4
		}
	}
	fallback() external {
		a = a + 1;
	}
}

pragma solidity ^0.8.0;
import "./mutated.sol";
contract Caller {
	function getA() public pure returns (uint256) {
		return mutated.a;
	}
	function getB() public pure returns (uint256) {
		return mutated.a + 1;
	}
	function getMultipleValues() public view returns (uint256 x, uint256 y, uint256 d) {
      	uint256 m = getA();
     	uint256 n = getB() + m;
      	x = n;
     	y = m + m;
      	d = 4 * this.add1();
	}
	function getMultipleValues2() public pure returns (uint256 x, uint256 y, uint256) {
      	uint256 m = getA();
     	uint256 n = getB() + m;
     	x = n;
     	y = m + m;
	}
	function getMultipleValues3() public pure returns (uint256 x, uint256 y, uint256 z) {
      	uint256 m = getA();
     	uint256 n = getB() + m;
     	uint256 o = getB() * m;
     	x = n;
     	y = m + m;
     	z = o + 1;
	}
	function getMultipleValues4() public pure returns (uint256 y) {
      	uint256 m = getA();
     	uint256 n
