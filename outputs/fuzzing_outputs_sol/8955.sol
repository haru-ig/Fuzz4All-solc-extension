pragma solidity ^0.8.0;
import "./CallContract.sol";
Contract Caller is CallContract {
  constructor() {
    __Caller__caller();
  }
  function __Caller__caller() internal override {
    fallback();
  }
  function callContract(address contractAddress) external payable override onlyCaller {}
  receive() external payable override onlyCaller {}
}

pragma solidity ^0.7.0;
contract ContractWithFallback {
  function callContract(address contractAddress) {
    this.addressContractWithFallback();
    contractWithFallback();
    fallback();
  }
  function __CallContract__addressContractWithFallback() internal view {
    callContract(address(this));
  }
  function __CallContract__contractWithFallback() internal view {
    callContract(address(msg.sender));
  }
  receive() external payable {}
}

pragma solidity ^0.7.0;

contract ContractWithFallback is CallContract {
  function contractWithFallback() public {
    fallback();
  }
  function fallback() public payable {}
}

contract Caller is CallContract {
  constructor() {
    __Caller__caller();
  }
  function __Caller__caller() internal override {
    fallback();
  }
  function callContract(address contractAddress) external payable override onlyCaller {}
  receive() external payable override onlyCaller {}
}
