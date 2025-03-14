pragma solidity ^0.8.0;

  contract MyContract{

    function sendData() private{
      address payable myContract = address(this);
      uint256 myData = 1;
      myData += myContract.transfer(0,1,1);
    }

    fallback() external payable  {}
  }
