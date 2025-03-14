pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated2_sn6096 { uint public x; function  mutate2(uint) public { x = uint256(x + uint256(200000000000000000000)); } }
contract sn6096 { uint public x; uint public __modified__x; constructor(uint256 _x) public { x = _x; __modified__x = _x; } function __modifiedset__(uint256 _x) public { __modified__x = _x; } function modifyme(uint256 _x) public view returns (uint256) { mutate(_x); return __modified__x; } function mutate(uint256 _x) public { mutate2(_x); } function mutate2(uint256 _x) public virtual returns (uint256) { x += _x; x = uint256(x * _x); return x; } }
