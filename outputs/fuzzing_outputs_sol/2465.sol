pragma solidity ^0.8.0;
contract NoFallback {
  constructor() public { }
  fallback () internal {}
}
contract Empty {
  mapping (uint => mapping (uint => uint)) map;
}
