pragma solidity ^0.8.0;
contract c {
	event e();
	mapping (uint => uint) f;
	function get() public pure returns (uint) {
		return 1;
	}
	function set( uint _c) public {
		f[0]=_c;
	}
	function p( s memory _c) public returns (uint,uint) {
		return (f[0],1);
	}
	function f() public {
		emit e();
	}
}
