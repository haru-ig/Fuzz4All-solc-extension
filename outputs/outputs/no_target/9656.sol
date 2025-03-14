pragma solidity ^0.8.0;
interface Ownable { function owner() external view returns (address); function transferOwnership(address newOwner) external returns (bool); }
