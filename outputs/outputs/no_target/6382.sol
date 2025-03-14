pragma solidity ^0.8.0;
contract modifiedC {
  function test(uint8 a) public returns (uint256) {
        uint modded = a%2;
        if( modded == 0)
        {
           return 2;
          return modded;
        }
        else
        {
           return 1 ;
          return modded;
          }
  }
}
