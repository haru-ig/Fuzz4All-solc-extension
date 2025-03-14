pragma solidity ^0.8.0;
contract ArrayLibary {
	constructor() public {}
	struct Struct41f5ca84be1085290ec92766d185689d { int a; int b; int c; int d; uint e; }
	function push(Struct41f5ca84be1085290ec92766d185689d[] storage self, Struct41f5ca84be1085290ec92766d185689d x) public returns (Struct41f5ca84be1085290ec92766d185689d[] memory) {}

	function pop(Struct41f5ca84be1085290ec92766d185689d[] memory self) public returns (Struct41f5ca84be1085290ec92766d185689d[] memory) {}
	function min(Struct41f5ca84be1085290ec92766d185689d[] memory self) public pure returns (Struct41f5ca84be1085290ec92766d185689d memory) {}
	function max(Struct41f5ca84be1085290ec92766d185689d[] memory self) public pure returns (Struct41f5ca84be1085290ec92766d185689d memory) {}
	function sum(Struct41f5ca84be1085290ec92766d185689d[] memory self) public pure returns (uint) {}

	function length(Struct41f5ca84be1085290ec92766d185689d[] memory self) public pure returns (uint256) {}
	function get(Struct41f5ca84be1085290ec92766d185689d[] storage self, uint256 i) public pure returns (Struct41f5ca84be1085290ec92766d185689d memory) {}
}
