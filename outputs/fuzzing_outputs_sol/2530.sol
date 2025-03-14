pragma solidity ^0.8.0;
contract MutateEVM
{
  uint256[] private arr;
  address public address_of_fallback;
  function fallback() public payable {
    address_of_fallback.transfer(42);
    arr.push(42);
  }
  function push(uint256 _val) public {
    arr.push(_val);
  }
  function call_from_fallback() public {
    address_of_fallback.call{value: address(this).balance}("");
  }
}
