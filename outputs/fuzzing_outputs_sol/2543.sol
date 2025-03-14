pragma solidity ^0.8.0;
contract Caller
{
  address fallbackAddress;
  uint256 public fallbackValue;
  receive() external payable {
   fallbackAddress = msg.sender;
  }

  function callToFallBack() public returns (uint256 returnValue) {
    if (fallbackAddress == msg.sender) {

      uint256 value = fallbackAddress.call.value(address(this).balance){{returnValue}};
      fallbackValue += value;
   }
  }
}
