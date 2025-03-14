pragma solidity ^0.8.0;
contract BitwiseXOR2 {
	mapping (address => uint) public mappings;
	function test() public {
		uint c = a^b;
		a = a^b;
	}
}
contract BitwiseXOR3 {
	mapping (address => uint) public mappings;
	function test() public {
		a = a^b;
	}
}
