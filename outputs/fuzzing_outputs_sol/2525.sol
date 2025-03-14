pragma solidity ^0.8.0;

contract FailIfFallback
{
  function call_fallback() public payable {
    if (address(this).balance!= 9999999999999999999) revert();
  }
  function call_fallback_two() public override {
    if (address(this).balance!= 99999999999999999999) revert();
  }
  function call_fallback_three() public pure {
    if (address(this).balance!= 99999999999999999999) revert();
  }
}
contract FailIfGetStorage
{
  function get_storage() public {
    uint256 a;
    a = storageValues[(i * 256) + 2];
  }
}
contract Caller
{
  uint256 public data_value;
  uint256 public contract_value;

  function set_and_call() public {
    data_value = 5;
    contract_value = address(this).balance;
  }
  function get_balance() public view returns (uint256) {
    return contract_value;
  }
  function get_calldata_value() public view returns (uint256) {
    return data_value;
  }
}
