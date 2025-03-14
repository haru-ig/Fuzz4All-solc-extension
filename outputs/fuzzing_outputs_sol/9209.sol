pragma solidity ^0.8.0;
contract CallerFallbackMutated {
  address public _receiver;
  address payable public _sender;
  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
    _receiver.call{value: 3}('');
  }
  receive() external payable {
    _receiver.call{value: 2}('');
  }
  receive() public payable {
    _receiver.call{value: 5}('');
  }
}

pragma solidity ^0.8.0;
contract CallerFallbackMutatedReceiver {
  address public _receiver;
  address payable public _sender;

  constructor(address payable _address) {
    _receiver = _address;
  }
  receive() external payable {
  }
  fallback() external returns (uint256) {
  }
}
