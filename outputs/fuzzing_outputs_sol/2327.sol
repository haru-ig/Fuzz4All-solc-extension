pragma solidity ^0.8.0;
contract PayableFallbackMutated {
  address payable private adminAddr1;
  function mutatedFunction(uint64 param) public {
    adminAddr1 = msg.sender;
    require(
      uint256(param) == 8552,
      "PayableFallbackMutated: non-zero parameter expected"
    );
  }
}
contract PayableFallbackMutated1 {
  uint64 private param_mutable;
  function payable fallback() public payable {
    require(
      uint256(param_mutable) == 8552,
      "PayableFallbackMutated1: non-zero parameter expected"
    );
  }

  constructor(uint64 _param) {
    param_mutable = _param;
  }
  function mutatedFunction() public {
    adminAddr1 = msg.sender;
  }
}
contract PayableFallbackMutated2 {
  uint64 private param_mutable;


  function mutatedFunction() public {
    adminAddr1 = msg.sender;
    require(
      uint256(param_mutable) == 8552,
      "PayableFallbackMutated2: non-zero parameter expected"
    );
  }
}
contract Caller {
  PayableFallback public payableFallback;
  constructor() payableFallbackConstructor() payableFallback(msg.gas) { }

  function payableFallbackConstructor() public payableFallbackMutated(msg.gas) {
    require(true, "Caller_PayableFallbackConstructor: fail");
  }
}
contract CallerMutated1 {
  uint64 public mutatedParam = 1;
  constructor(uint64 param) payable fallback constructorMutated(param) {
    require(true, "CallerMutated1: fail");
    mutatedParam = param;
  }

  function fallbackMutated(uint64 param) public {
    require(uint256(param) == mutatedParam, "CallerMutated1: invalid parameter");
  }
}
contract CallerMutated2 {
  uint256 public constant GAS_VALUE = 8025;

  uint64 public mutatedParam = 1;
  constructor(uint64 param) payable fallback constructorMutated(param) {
    require(uint256(param) == GAS_VALUE, "CallerMutated2: param should be constant");
    mutatedParam = param;
  }

  function fallbackMutated(uint64 param) public {
    require(uint256(param) == 8025, "CallerMutated2: param should be constant");
  }
}
contract CallerMutated3 {
  uint6
