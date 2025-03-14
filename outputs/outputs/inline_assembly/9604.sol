pragma solidity ^0.8.0;
contract YulContract {
   mapping(uint => uint) private storageValue;
   function subContract() internal pure returns (uint) {
       return storageValue[contractCounter];
   }
}
