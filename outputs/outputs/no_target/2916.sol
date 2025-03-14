pragma solidity ^0.8.0;
interface second {
	function a() external;
	function b() external view returns(uint256);
	function c() external view returns(uint32);
	function d() external view returns(uint64);
	function e() external view returns(uint);
}
