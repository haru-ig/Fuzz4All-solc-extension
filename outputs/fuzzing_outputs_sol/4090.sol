pragma solidity ^0.8.0;
contract Fallback {
  receive({ value: 10000000000 }) external payable {}
}
