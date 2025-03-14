pragma solidity ^0.8.0;
import {E4G} from './E4G.sol';

 modifier onlyOwner() {
    require(_msgSender() == owner(), "Only owner can transfer owner");
    _;
}
contract E4G2 {
  uint8 _number;
  address payable owner;
  E4G2(uint8 num,uint8 num2) {
    _number = num +num2;
    owner = payable(msg.sender);
  }
  function() external payable {
    owner.transfer(address(this).balance-1);
  }
  function getNumber(){
    return _number;
  }
}
