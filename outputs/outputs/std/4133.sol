pragma solidity ^0.8.0;
contract Memory2 {
	uint[10] memoryOfArray;
	uint[] memoryOfArrays;
	constructor () public {
	}
}

pragma solidity ^0.8.0;

contract Memory3 {
	uint public constant myConstant = 10;
	uint public constant myConstant2 = 10;
	address public constant myConstantAddress = 0x8615677C6d40D0e679a98a719Fdf99a813493812;
	uint x;
	uint y;
	constructor () public {
		x = 10;
		y = 20;
	}
	function greeting() public view returns(string memory){
		return "Hello World!";
	}
	function add(uint x1, uint x2) public pure returns(uint) {
		return x1 + x2;
	}
	function substrating(uint x, uint start, uint amountToSubstract) public pure returns(uint, uint) {
		return (x - amountToSubstract, x + amountToSubstract);
	}
}
