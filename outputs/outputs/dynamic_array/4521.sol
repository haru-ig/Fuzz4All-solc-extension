pragma solidity ^0.8.0;
contract Test { uint[] private x; uint[] public y; constructor () public {
} modifier onlyX { require (msg.sender == x); _;
} }
