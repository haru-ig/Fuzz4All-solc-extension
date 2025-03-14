pragma solidity ^0.8.0;
 uint256[] memory arr;
uint256[] memory barr;
address[] account = [address[](0)];
address[] account2;
address[] empty;
uint[] zero = [0];
uint[] one = [1];
uint[] two;
uint[] large;
uint[] overflow;
uint256[] two2;

contract C {
	mapping(uint256 => uint256) map;
	mapping(uint256 => uint256[]) arrmap;
	mapping(uint256=>uint)  nummap;
	mapping (uint256 => uint8[]) arrmap8;
	mapping (uint256=>uint[3]) map3;
	mapping (uint256=>address[2]) account2arr;
	mapping (uint256=>bytes2) barr2;
	constructor() {
    	barr2[5] = 12345;
	 account2arr[4] = [0x00000000000000000000000000000000000023, 0x000000000000000000000000000000000000000024];
	 account2arr[6] = [0x0000000000000000000000000000000000000023, 0x00000000000000000000000000000000000000024];
	 account2arr[7] = [0x00000000000000000000000000000000000000023, 0x000000000000000000000000000000000000000024];
	 account2arr[8] = [0x000000000000000000000000000000000000000023, 0x000000000000000000000000
