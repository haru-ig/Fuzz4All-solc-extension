pragma solidity ^0.8.0;
contract YulContract {
   uint internal contractCounter = 1;
    mapping(uint=>YulContract) public contractStore;
   function subContract() internal returns (uint) {
       contractCounter -= 1;
       contractStore[contractCounter].contractCounter -=1;
       return contractCounter;
   }
}
