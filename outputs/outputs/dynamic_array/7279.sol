pragma solidity ^0.8.0;
contract Bug05 {
	constructor(address _a, address[] memory _b, uint256[] memory _c, mapping(uint256 => uint256[3]) memory _d, address[3][3] memory _e) {
	}
	function func1() public { }
	function func2() public returns (uint256) {
		return func1();
	}
}
