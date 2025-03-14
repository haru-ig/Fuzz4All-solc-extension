pragma solidity ^0.8.0;
contract SimpleFallback {
  string public constant text = "Hello world";
  constructor () {}
  receive () payable {}
  function withdraw () public {
    owner.transfer(address(this).balance);
  }
}
