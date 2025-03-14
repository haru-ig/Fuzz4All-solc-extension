pragma solidity ^0.8.0;
contract StorageFallback {
  Storage storage;
  constructor() {
    _store();
  }
  function _fallback(uint x) internal pure {
    storage.storageData += x;
  }

  function _store() internal {
    storage.storageData = 1;
  }
}
contract Caller {
  Storage storage;
  uint fallbackFunction(uint x) public pure{
    storage.storageData += x;
  }
}



pragma solidity ^0.8.0;
contract FallbackCallTo {
  uint externalFunction(uint x) public pure {
    x = externalFunction(x + 1);
  }
  function externalFunction(uint x) public pure returns(uint) {
    return x + 1;
  }
}
