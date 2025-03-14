pragma solidity ^0.8.0;
contract Embakery {
  constructor() {
  }
  fallback() {


    uint256[] storage foo = new uint256[](5);

    foo[6]= 10;
    return foo[4];






  }
}
