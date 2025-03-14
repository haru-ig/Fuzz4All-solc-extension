pragma solidity ^0.8.0;


mapping(address => uint) public addressToIndex;

import "../NoReturn.sol";
import "../EtherFallback.sol";
contract FallbackContract is NoReturn, EtherFallback {
  constructor() {
    addressToIndex[msg.sender] = addressToIndex[msg.sender].add(1);
  }

  fallbackTo0X0Function() external { }
  fallbackTo1X1Function() public { }

  function fallbackTo0X0Function() public nonRetrunFallback() { }
  function fallbackTo1X1Function() public public { }
}

import "../FallbackContract.sol";
contract Main {

  function run() external {
    FallbackContract contract = new FallbackContract();
    assembly { mstore(returndatacopy(0x40), mload(0x40)) }
  }
}
