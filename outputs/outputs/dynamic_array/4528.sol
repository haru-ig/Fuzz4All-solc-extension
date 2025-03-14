pragma solidity ^0.8.0;
contract Test { address public a; uint[] public x; constructor () {
} modifier onlyA { require (msg.sender == address(a)); _;
} }
