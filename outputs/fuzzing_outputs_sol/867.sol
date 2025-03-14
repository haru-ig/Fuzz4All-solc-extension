pragma solidity ^0.8.0;
contract Caller {
  function callToReturnFunction() public {
    NoReturn.nonReturnFallback();
  }

  function callToThrowFunction() public {
    NoReturn.nonReturnFallback();
  }

  function notThrowFunction() public {
    (bool success, bytes memory data) = address(this).call{value: 0}("");
    require(success);
  }

  function notThrowFunctionWithRevert() public reverts {
    (bool success, bytes memory data) = address(this).call{value: 0}("");
    require(false);
  }

  function callToReturnFunctionWithRevert() public reverts {
    NoReturn.nonReturnFallback();
  }

  function callToThrowFunctionWithRevert() public reverts {
    NoReturn.nonReturnFallback();
  }
}
