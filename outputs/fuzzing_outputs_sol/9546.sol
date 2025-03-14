pragma solidity ^0.8.0;
library Library {
  address payable constant addressZero = payable(0);
  address payable constant addressOne = payable(0x1111111111111111111111111111111111111111111111111111111111111);

  function contractAddress() internal pure returns (address payable) {
    return addressOne;
  }
}
