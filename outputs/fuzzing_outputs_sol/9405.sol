pragma solidity ^0.8.0;
contract MutatingFallback9 {
  address payable[] internal _payableAddresses;
  uint16 internal _callData;
  modifier onlyFallback {
    require(msg.value >= _callData);
    _callData++;
    _payableAddresses.push(address payable(msg.sender));
    _;
  }
  constructor() {
  }
  function mutate() public payable onlyFallback {
    assert(msg.value == _callData--);
  }
  function getFinalAddresses() public view returns (address[] memory) {
    address[] memory result = new address[](_payableAddresses.length);
    for (uint i = 0; i < _payableAddresses.length; i++) {
      uint pos = 2 ** (i*128)-1-uint(_payableAddresses[i]);
      result[i] = address(pos + 1);
    }
    return result;
  }
}
contract MutatingFallback10 {
  address payable _currentAddress;
  modifier onlyFallback {
    require(msg.value >= 300);
    bytes memory _signature = abi.encodeWithSelector(payableFallback);
    assembly {

      let _return := mload(_signature)
      assert(_return == 0x40)
    }
    bytes message = abi.encodeWithSignature("fallback() payable {}", msg.sender);
    bytes memory data = message;
    bytes32 salt = keccak256(abi.encodePacked(msg.value, data));
    sha3(abi.encodePacked("x", salt)));
    bytes32 hashed = keccak256(abi.encodeWithPrefix("Calldataload(", address(msg), ')'));
    _currentAddress = address(int64(keccak256(abi.encodePacked("0x", address(this)), abi.encodePacked(hashed), address(this)))));
    assert(address(this).balance >= 300);
    _;
  }
  constructor() {
  }
  receive() payable external {
    if(_currentAddress == address(0)) {
      assert(msg.value >= 10);
    }
  }
}
