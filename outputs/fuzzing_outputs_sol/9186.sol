pragma solidity ^0.8.0;
contract Caller9 {
  address _receiver;
  address payable _sender;
  function fallback() external payable {
    assembly {
      _calldatacopy(0, 0, calldatasize())

      let _returndata := mload(0x40)
      let _returned := call(gas(), _receiver, _returndata, calldatasize())
      revert(_returned)
    }
  }
  constructor(address payable _address) {
    _receiver = _address;
  }
}
