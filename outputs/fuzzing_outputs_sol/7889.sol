pragma solidity ^0.8.0;
contract PayableCaller {
  receive() external payable {}
}
contract LegacyCaller {
  receive() external virtual {}
}
