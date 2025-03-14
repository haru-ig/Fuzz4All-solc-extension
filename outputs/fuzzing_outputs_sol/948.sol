pragma solidity ^0.8.0;
contract ModFallbackData {
   constructor() external {}
   fallback (uint x) public payable { }
}
