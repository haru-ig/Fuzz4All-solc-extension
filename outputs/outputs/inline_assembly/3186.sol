pragma solidity ^0.8.0;
contract C {
	function x() public view returns(uint) {
		uint x;
		assembly {
			x := 0xcd
			}
		return x;
	}
	mapping(address => uint) public balances;
}
