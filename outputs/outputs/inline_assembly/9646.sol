pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function addBy(uint x) internal {
      contractCounter += x;
}
}
