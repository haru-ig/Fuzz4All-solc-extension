pragma solidity ^0.8.0;
contract X {
  bool _success;
  uint _result;
  function success() public pure returns (bool) {
    return true;
  }
  function revertWithException() public pure returns (uint) {
    return assembly {
      ret 0xffffffff
    };
  }
  function revertWithRevert() public pure returns (uint) {
    _result = revertWithException();
    return _result;
  }
  function succeed() public pure returns (bool) {
    return success();
  }
  function fail() public pure returns (bool) {
    if (!success()) revertWithRevert();
    return false;
  }

  function revertWithRevertToContractWithException() public pure returns (uint) {
    return 0xf5ac8060;
  }
}
