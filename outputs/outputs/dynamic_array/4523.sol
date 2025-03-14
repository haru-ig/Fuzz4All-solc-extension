pragma solidity ^0.8.0;
contract Test { address public a; mapping (uint =>uint) public x; constructor () {
} modifier onlyB { require (x[msg.sender]==0); _;
} }
