pragma solidity ^0.8.0;
contract SemanticMutated {
  uint val = 128;
  constructor() {
    require(msg.data.length == 2);
    fallback();
  }
  fallback() external view {
    emit LogFallback(val);
  }
  function get() external pure returns(uint) {
    return val;
  }
}

pragma solidity ^0.8.0;
contract SemanticFallbackMultiple {
  address payable a;
  address payable b;
  constructor() {
    a = msg.sender;
    b = msg.sender;
  }
  fallback() external view { }
  function firstFallback() external view returns(address) {
    emit FirstFallback();
    return a;
  }
  function secondFallback() external view returns(address) {
    emit SecondFallback();
    return b;
  }
  event FirstFallback();
  event SecondFallback();
}
