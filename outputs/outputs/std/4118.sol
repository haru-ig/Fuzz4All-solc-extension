pragma solidity ^0.8.0;
contract Array2Mut {
	address addr;
	uint256 val;
	bool bool1;
	bytes memory mem;
	constructor (address _addr, uint256 _val) public {
		addr = _addr;
		val = _val;
		bool1 = true;
		mem = "hello";
	}
	function setval(uint256 _val) public {
		val = _val;
	}
	function get() public view returns(uint256) {
		return val;
	}
}
