pragma solidity ^0.8.0;
contract TestPrecompiled0d3aePayable {
  constructor() public payable {

    (bool success, ) = payableRef.call{value:msg.value}('');

  }
}
