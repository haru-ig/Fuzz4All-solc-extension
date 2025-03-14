pragma solidity ^0.8.0;
contract B {}
contract A { uint256[] payable _array; }
function _modifyMe(uint256 num) internal { _array[0] = num; }
function modify(uint256 num) public { _modifyMe(num); }
contract C { function modify(uint256) public; }
