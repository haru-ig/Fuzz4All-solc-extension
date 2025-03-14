pragma solidity ^0.8.0;
contract AddressZeroFallbackInterface
{
  address public fallbackAddress;
  function fallback() public {
    fallbackAddress = address(0x42);
  }
  function fallbackWithAddress() public {
    fallbackAddress = address(this);
  }
  function fallbackWithAddressZero() public {
    fallbackAddress = address(0x0);
  }
}
