pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract RevertOnlyCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyRevert() public { revert(); }
  modifier restricted {
    require(_msgSender() == _msgData(), "Caller is not the RevertOnlyCaller");
    _;
  }
}
contract RevertOnlyRevertCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyRevert() public { revert(); }
  modifier restricted {
    require(_msgSender() == _msgData(), "Caller is not the RevertOnlyRevertCaller");
    _;
  }

  function _modifyRevert_restricted() public restricted { revert(); }
  function _calculate_restricted() public restricted returns (bytes32) { return X; }
}
contract NonRevertOnlyCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function _modifyNonRevert() public { revert(); }
  modifier restricted {
    require(_msgSender() == _msgData(), "Caller is not the RevertOnlyCaller");
    _;
  }
}
contract NonRevertOnlyRevertCaller {
  bytes32 constant X = '1001910';
  bytes32 x;
  constructor(bytes32 arg) public {
    x = X;
  }
  function _calculate() public pure returns (bytes32) {
    return X;
  }
  function
