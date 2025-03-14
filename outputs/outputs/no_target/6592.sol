pragma solidity ^0.8.0;
contract modifierX{

	function f() public pure returns(uint) {
		uint y = 0;
		y = -y;
		return y;
	}
}
contract modifierY is modifierX
{

	function g(uint x) public pure returns (uint) {
		uint y = 0;
		y += x;
		y += f();
		y;
	}
}
contract myContractY is modifierY
{

}
