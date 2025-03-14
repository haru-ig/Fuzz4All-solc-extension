pragma solidity ^0.8.0;
library HelperLibrary {
  fallback() external payable {
    throw;
  }
}
