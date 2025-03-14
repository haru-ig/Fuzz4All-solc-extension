pragma solidity ^0.8.0;
contract ModifiedComplex is Complex {
  function nonReturnFallback(uint256[] memory _arg) public {

    uint256 _modifiedArgument = 875;
    uint256 i;
    for (i = 0; i < _arg.length; i++) {
      _arg[i] = _arg[i] + _modifiedArgument;
    }

    nonReturnFallback(_arg);
  }
}
