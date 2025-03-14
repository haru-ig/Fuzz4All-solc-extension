pragma solidity ^0.8.0;
contract Caller {
  address payable _sender;
  address _contract;
  mapping (bytes4 => address payable) _fallbackMap;
  bytes4[] _functionSigs;
  constructor(address payable _address, address _contract, bytes4[] memory _functionSigs) {
    require(_functionSigs.length > 0, "_functionSigs cannot be empty");
    _receiver(_address);
  }
  receive() external payable {
    _sender.transfer(msg.value);
  }
  function _receiver(address payable _address) internal {
    _sender = _address;
    _functionSigs = new bytes4[](_functionSigs.length);
    for (uint i=0; i < _functionSigs.length; i++)
      _functionSigs[i] = bytes4(keccak256(abi.encodePacked(msg.data, uint32(i)))));
  }
  fallback() external payable {
    for (uint i=0; i < _functionSigs.length; i++) {
      bytes4 sig = _functionSigs[i];
      address payable func = _fallbackMap[sig];
      require(func!= address(0), "Caller: Cannot find function");
      address payable returner = func.delegatecall(abi.encodeWithSignature(abi.encodePacked("0x1", sig, _address, address(this).balance, keccak256(msg.data), 1200)));
      uint256 balance = returner.balance;
      require(balance <= msg.value, "Caller: Call failed: too high");
      _sender.transfer(balance);
    }
  }
}

pragma solidity ^0.8.0;
contract FeeHandler
