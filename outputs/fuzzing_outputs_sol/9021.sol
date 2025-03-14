pragma solidity ^0.8.0;
contract Mutator {
  fallback() external payable {
    uint v = 1;
    v *= v;
  }
}

pragma solidity ^0.8.0;
abstract contract ReentrancyGuard {
  uint _counter;
  constructor () {

    _counter = 0;
  }
  modifier nonReentrant() {
    _counter += 1;
    uint oldCounter = _counter;
    _;
    require(oldCounter == _counter);
  }
  function counter() public view returns (uint256) {
    return _counter;
  }
}
contract ReentrancyGuardExample {
  using ReentrancyGuard for uint;
  function nonReentrantFallback() internal nonReentrant {
    uint v = 1;
    v *= v;
  }
}
