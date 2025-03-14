pragma solidity ^0.8.0;
contract StorageModifier
{
  fallback() public payable {
      uint256 storageValue = 20;
      if (storageValue > 10)
      {
        _;
      }
  }
}

pragma solidity ^0.8.0;
contract Caller
{
  address payable private _to;
  function Caller() {
      _to = payable(msg.sender);
  }
  function callCaller() public payable {
      _to.transfer{value: msg.value}(-1);
  }
}

pragma solidity ^0.8.0;
contract CallerMultiple
{
  fallback() public payable {
    return;
  }
  function callCaller() public payable {
     require(msg.value < 5000);
     _to.transfer{value: (msg.value / 2)}(-1);
     return;
  }
}
