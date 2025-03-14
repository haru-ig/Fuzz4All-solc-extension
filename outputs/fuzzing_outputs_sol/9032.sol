pragma solidity ^0.8.0;
contract Caller {
  address payable a;
  Fallback internal _fallback;
  constructor() protected {
    _fallback = address(0x0);
  }
  fallback() public payable {
    _fallback.execute();
  }
}
