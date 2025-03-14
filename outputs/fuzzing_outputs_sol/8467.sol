pragma solidity ^0.8.0;
contract CallerExample4 {
  fallback () {
    assembly {

      returndatacopy(0, 0, 0)
      returndatasize()
      returndatasize()
      returndata()
    }
  }
}
