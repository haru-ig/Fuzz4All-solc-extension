pragma solidity ^0.8.0;
contract Example4 {
  function payableFallback(address payable to){
    to.transfer(999999999999999999);
  }
}
