pragma solidity ^0.8.0;
contract SimpleCaller {
  constructor() {}
  function caller() external pure returns (address) {

    return address(0x818e16894bb47246a0f7a2008048eb87804ba35f);
  }
}


pragma solidity ^0.8.0;
contract FallbackContract {
  constructor() {}
  receive() external payable {}
}
