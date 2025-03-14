pragma solidity ^0.8.0;
contract Multiprecision{
	using Math for uint;
  uint i;
  constructor () {
		i = 5;
  }
	function add() internal returns(string memory){
		return b32(i+i);
	}
	function set(uint n) internal returns(string memory){
		i = n;
		return b32(i);
	}
}
