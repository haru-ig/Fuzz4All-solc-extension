pragma solidity ^0.8.0;
contract Modded {
	constructor(uint _i) public { setInt(1, _i); }
	function f() public { return setInt(2, getInt(1)); }
  function setInt(uint256 _c, uint256 _i) public { c[_c] = _i; }
	function getInt(uint256 _c) public pure  { return c[_c]; }
	mapping(uint => uint) c;
}
