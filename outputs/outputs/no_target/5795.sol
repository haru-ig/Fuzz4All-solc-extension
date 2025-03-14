pragma solidity ^0.8.0;
interface Bar { function setfoo(address _foo) external returns (bool); }

pragma solidity >=0.8.0;
interface Bar { function setfoo(address _foo) external; }
