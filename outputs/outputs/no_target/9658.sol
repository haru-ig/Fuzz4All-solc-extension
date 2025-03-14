pragma solidity ^0.8.0;
interface IERC223 { function approve(address _spender, uint256 _value) external returns (bool); event Approval(address indexed owner, address indexed spender, uint256 value); }
